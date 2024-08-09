#!/bin/bash

# Get the commit message
COMMIT_MSG_FILE=$1
COMMIT_MSG=$(cat $COMMIT_MSG_FILE)

# Define the required patterns
PATCH_PATTERN="fix\(.*\): "
MINOR_PATTERN="feat\(.*\): "
MAJOR_PATTERN="perf\(.*\): "
NA_PATTERN="N/A: "

function is_interactive {
  if [[ $- =~ *i* ]]; then 
    echo 'YES'
  else 
    echo 'NO'
  fi
}

# Check if the commit message contains any of the required patterns
if echo "$COMMIT_MSG" | grep -qE "$NA_PATTERN|$PATCH_PATTERN|$MINOR_PATTERN|$MAJOR_PATTERN"; then
  exit 0
fi

echo "Warning: Commit message does not contain 'N/A: ' , 'fix(*): ', 'feat(*): ', or 'perf(*): '."
echo "Please ensure your commit message includes one of these patterns."
echo "See also https://github.com/mathieudutour/github-tag-action?tab=readme-ov-file#bumping"

if [ $(is_interactive) = "YES" ]; then
  read "Do you want to continue committing? (y/N): " response
  case $response in
    [Yy]) exit 0
      ;;
  esac
fi

# Fallback case
exit 1
