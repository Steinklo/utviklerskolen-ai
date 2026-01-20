#!/bin/bash
#
# Hook: Validate bash commands that interact with external APIs
# Blocks potentially dangerous curl/wget commands
#

INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

# Block commands that might expose secrets or hit production
if echo "$COMMAND" | grep -iE 'curl.*(-d|--data|POST|PUT|DELETE).*prod' > /dev/null; then
    echo "Blocked: Cannot make mutating requests to production APIs." >&2
    exit 2
fi

# Block commands that might leak environment variables
if echo "$COMMAND" | grep -iE 'curl.*\$\{?(API_KEY|SECRET|PASSWORD|TOKEN)' > /dev/null; then
    echo "Blocked: Cannot use secrets in curl commands. Use environment variables securely." >&2
    exit 2
fi

exit 0
