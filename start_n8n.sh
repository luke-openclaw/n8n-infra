#!/bin/bash
# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Load environment variables from the same directory
if [ -f "$SCRIPT_DIR/n8n.env" ]; then
    export $(grep -v '^#' "$SCRIPT_DIR/n8n.env" | xargs)
fi

# Start n8n using the absolute path to the binary
/home/gopi/.nvm/versions/node/v22.22.0/bin/n8n start
