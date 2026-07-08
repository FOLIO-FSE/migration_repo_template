#!/usr/bin/env bash
set -euo pipefail

# Remove "Co-authored-by: Copilot <copilot@github.com>" from all commit messages.
#
# WARNING: This rewrites commit SHAs. All collaborators will need to re-clone
# or reset their local copies. Requires a force push to update remotes.

echo "=========================================================="
echo " WARNING: This will rewrite ALL commits in this repository"
echo " to remove Copilot co-author trailers from commit messages."
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

echo "Rewriting commit messages..."

# Save remote configuration before git-filter-repo removes it
remotes=$(git remote -v)

uv run git-filter-repo \
--message-callback "
import re
pattern = rb'\nCo-authored-by: Copilot <copilot@github\.com>\n?'
if re.search(pattern, message):
    message = re.sub(pattern, b'', message)
    message = message.rstrip() + b'\n'
return message
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
echo "Done! Copilot co-author trailers have been removed."
echo ""
echo "Next steps:"
echo "  1. Inspect the repo: git log"
echo "  2. Force push: git push --force-with-lease origin main"
echo "  3. Have all collaborators re-clone the repository."
