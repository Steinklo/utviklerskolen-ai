#!/usr/bin/env python3
"""
Hook: Protect sensitive files from being edited.
Blocks edits to .env files, lock files, and git internals.
Exit code 2 = block the operation.
"""
import json
import sys

def main():
    try:
        input_data = json.load(sys.stdin)
    except json.JSONDecodeError:
        sys.exit(0)  # Allow if can't parse

    file_path = input_data.get('tool_input', {}).get('file_path', '')

    # Files that should never be edited by Claude
    sensitive_patterns = [
        '.env',
        '.env.local',
        '.env.production',
        'package-lock.json',
        'yarn.lock',
        'pnpm-lock.yaml',
        '.git/',
        'node_modules/',
        'bin/',
        'obj/',
        '.claude/settings.local.json',
    ]

    for pattern in sensitive_patterns:
        if pattern in file_path:
            print(f"Blocked: '{file_path}' is a protected file.", file=sys.stderr)
            print("These files should not be edited directly by Claude.", file=sys.stderr)
            sys.exit(2)  # Block operation

    sys.exit(0)  # Allow operation

if __name__ == '__main__':
    main()
