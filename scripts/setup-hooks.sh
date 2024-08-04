#!/bin/sh

set -e

SCRIPT_DIR="$(dirname $0)"

# Create the hooks directory if it doesn't exist
mkdir -p .git/hooks

# Copy the commit-msg hook to the .git/hooks directory
cp "$SCRIPT_DIR/hooks/commit-msg" .git/hooks/

echo "Git hooks installed successfully."
