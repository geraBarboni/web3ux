#!/bin/bash

# web3ux agent installer
# Run from the repo root: ./setup.sh
# Requires: repo cloned to ~/.claude/web3ux/

set -e

AGENTS_DIR="$HOME/.claude/agents"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Verify the repo is in the expected location
if [ "$SCRIPT_DIR" != "$HOME/.claude/web3ux" ]; then
  echo "⚠️  This repo should be cloned to ~/.claude/web3ux/"
  echo "   Current location: $SCRIPT_DIR"
  echo "   Run: git clone <repo-url> ~/.claude/web3ux"
  exit 1
fi

echo "Installing web3ux agents..."

mkdir -p "$AGENTS_DIR"

for agent in "$SCRIPT_DIR"/agents/*.md; do
  name=$(basename "$agent")
  cp "$agent" "$AGENTS_DIR/$name"
  echo "  ✓ $name"
done

echo ""
echo "Done. Agents installed to $AGENTS_DIR"
echo "Knowledge files available at $SCRIPT_DIR/knowledge/"
echo "To update: git pull && ./setup.sh"
