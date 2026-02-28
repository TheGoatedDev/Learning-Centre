#!/bin/bash
# PostToolUse hook: Remind user to run tests after test file changes
# Input: JSON via stdin with tool_input.file_path

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // .tool_input.path // empty')

if [ -n "$FILE_PATH" ] && [[ "$FILE_PATH" == *"/tests/"* ]]; then
  echo "Test file updated: $FILE_PATH — remind the user to run their tests!"
fi

exit 0
