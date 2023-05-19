#!/bin/bash

# Get the current branch name
current_branch=$(git rev-parse --abbrev-ref HEAD)

# Get the commit message
if [ -z "$1" ]; then
  read -p "Enter commit message: " commit_message
else
  commit_message="$1"
fi

# Add all changes
git add .

# Commit changes
git commit -m "$commit_message"

# Push changes to origin
git push origin "$current_branch"