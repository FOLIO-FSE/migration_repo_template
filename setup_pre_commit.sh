#!/usr/bin/env bash
set -euo pipefail

echo "Installing pre-commit and nbstripout..."
uv add --dev pre-commit nbstripout

echo "Installing pre-commit hooks..."
uv run pre-commit install

echo "Installing nbstripout as a git filter..."
uv run nbstripout --install

echo ""
echo "Done! Hooks and filters are now active."
echo "  - check-added-large-files: blocks commits containing files > 500 KB"
echo "  - nbstripout (git filter): strips output from notebooks on commit"
echo "    (working copies remain intact with all outputs preserved)"
