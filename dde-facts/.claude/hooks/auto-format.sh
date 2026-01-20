#!/bin/bash
#
# Hook: Auto-format files after edit/write
# Runs prettier on TypeScript/JavaScript files
# Runs dotnet format on C# files
#

# Read input from stdin
INPUT=$(cat)

# Extract file path from JSON input
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

if [ -z "$FILE_PATH" ]; then
    exit 0
fi

# Get file extension
EXT="${FILE_PATH##*.}"

case "$EXT" in
    ts|tsx|js|jsx|json|css|html|md)
        # Format with Prettier if available
        if command -v npx &> /dev/null && [ -f "package.json" ]; then
            npx prettier --write "$FILE_PATH" 2>/dev/null || true
        fi
        ;;
    cs)
        # Format with dotnet format if available
        if command -v dotnet &> /dev/null; then
            dotnet format --include "$FILE_PATH" 2>/dev/null || true
        fi
        ;;
esac

exit 0
