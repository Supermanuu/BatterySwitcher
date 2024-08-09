#!/bin/sh

set -e

SCRIPT_DIR="$(dirname $0)"
HOOKS_DIR="$SCRIPT_DIR/../.git/hooks"

# Create the hooks directory if it doesn't exist
mkdir -p "$HOOKS_DIR"

# Copy the commit-msg hook to the .git/hooks directory
cp "$SCRIPT_DIR/hooks/commit-msg.sh" "$HOOKS_DIR/commit-msg"

echo "Git hooks installed successfully."
