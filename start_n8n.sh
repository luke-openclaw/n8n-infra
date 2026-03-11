#!/bin/bash
# Use current directory since we run from within the repo
SCRIPT_DIR=$(dirname "$0")

# Load environment variables
if [ -f "$SCRIPT_DIR/n8n.env" ]; then
    export $(grep -v '^#' "$SCRIPT_DIR/n8n.env" | xargs)
fi

# Start n8n
/home/gopi/.nvm/versions/node/v22.22.0/bin/n8n start
