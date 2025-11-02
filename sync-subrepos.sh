#!/bin/bash

# Define source and destination paths
SUBREPOS=("app" "backend" "frontend")
PARENT_REPO_PATH="."  # or use "." if preferred

# Loop through each subrepo
for repo in "${SUBREPOS[@]}"; do
  echo "Syncing $repo..."

  # Use rsync to copy everything except .git
  rsync -av --exclude='.git' "$repo/" "$PARENT_REPO_PATH/$repo/"
done

echo "✅ Sync complete. You can now commit changes in the parent repo."