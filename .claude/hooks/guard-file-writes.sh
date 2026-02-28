#!/bin/bash
# PreToolUse hook: Block Edit/Write to files outside tests/ directories
# Input: JSON via stdin with tool_input.file_path

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // .tool_input.path // empty')

# Allow if no file path (not a file operation)
if [ -z "$FILE_PATH" ]; then
  exit 0
fi

# Allow writes to CLAUDE.md and .claude/ config files
if [[ "$FILE_PATH" == *"CLAUDE.md" ]] || [[ "$FILE_PATH" == *".claude/"* ]]; then
  exit 0
fi

# Allow writes to PROGRESS.md files
if [[ "$FILE_PATH" == *"PROGRESS.md" ]]; then
  exit 0
fi

# Allow writes to tests/ directories
if [[ "$FILE_PATH" == *"/tests/"* ]]; then
  exit 0
fi

# Block everything else
echo "BLOCKED: Claude may only create/edit files inside tests/ directories." >&2
echo "Attempted file: $FILE_PATH" >&2
exit 1
