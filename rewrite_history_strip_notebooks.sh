#!/usr/bin/env bash
set -euo pipefail

# Rewrite git history to strip outputs from all Jupyter notebooks in all commits.
#
# WARNING: This rewrites commit SHAs. All collaborators will need to re-clone
# or reset their local copies. Requires a force push to update remotes.
#
# Prerequisites:
#   - git-filter-repo (uv add --dev git-filter-repo)
#   - nbstripout (uv add --dev nbstripout)
#   - nbformat (uv add --dev nbformat)

if ! uv run python -c "import git_filter_repo" &> /dev/null; then
    echo "ERROR: git-filter-repo is not installed."
    echo "Install it with: uv add --dev git-filter-repo"
    exit 1
fi

if ! uv run python -c "import nbformat; from nbstripout import strip_output" &> /dev/null; then
    echo "ERROR: nbstripout and/or nbformat are not installed."
    echo "Install them with: uv add --dev nbstripout nbformat && uv sync"
    exit 1
fi

echo "=========================================================="
echo " WARNING: This will rewrite ALL commits in this repository"
echo " to strip outputs from Jupyter notebooks."
echo ""
echo " - All commit SHAs will change."
echo " - You will need to force-push afterwards."
echo " - All collaborators will need to re-clone."
echo "=========================================================="
echo ""
read -rp "Are you sure you want to continue? [y/N] " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 0
fi

echo "Rewriting history with nbstripout (targeting .ipynb files only)..."

# Save remote configuration before git-filter-repo removes it
remotes=$(git remote -v)

uv run git-filter-repo \
--file-info-callback "
if filename.endswith(b'.ipynb'):
    print(f'\nProcessing {filename.decode()}')

    import copy

    try:
        import nbformat
        from nbstripout import strip_output

        # Get the file contents using the blob_id
        contents = value.get_contents_by_identifier(blob_id)

        nb = nbformat.reads(contents.decode('utf-8'), as_version=nbformat.NO_CONVERT)
        nb_original = copy.deepcopy(nb)

        nb_stripped = strip_output(
            nb,
            keep_output=False,
            keep_count=False,
            keep_id=False,
            extra_keys=[
                'metadata.signature',
                'metadata.widgets',
                'cell.metadata.collapsed',
                'cell.metadata.ExecuteTime',
                'cell.metadata.execution',
                'cell.metadata.heading_collapsed',
                'cell.metadata.hidden',
                'cell.metadata.scrolled'
            ],
            drop_empty_cells=False,
            drop_tagged_cells=[],
            strip_init_cells=False,
            max_size=0
        )

        if nb_original != nb_stripped:
            new_contents = nbformat.writes(nb_stripped).encode('utf-8')
            print(f'  → Cleaned {filename.decode()}: {len(contents)} → {len(new_contents)} bytes')
            new_blob_id = value.insert_file_with_contents(new_contents)
            return (filename, mode, new_blob_id)
        else:
            print(f'  → No changes needed for {filename.decode()}')
    except Exception as e:
        print(f'Error processing {filename.decode()}: {e}')
        import traceback
        traceback.print_exc()
        return (filename, mode, blob_id)
# Return unchanged file if it's not a notebook
return (filename, mode, blob_id)
" --force

# Restore remote configuration
while IFS=$'\t' read -r name url_and_type; do
    url="${url_and_type%% *}"
    type="${url_and_type##* }"
    if [[ "$type" == "(fetch)" ]]; then
        git remote add "$name" "$url" 2>/dev/null || true
    fi
done <<< "$remotes"

echo ""
echo "Done! History has been rewritten."
echo ""
echo "Next steps:"
echo "  1. Inspect the repo: git log --oneline"
echo "  2. Force push: git push --force-with-lease origin main"
echo "  3. Have all collaborators re-clone the repository."
