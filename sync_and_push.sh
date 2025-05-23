#!/bin/bash

# Paths
SOURCE="/Users/benjaminheim/Documents/pkm obsync/Website/"
TARGET="/Users/benjaminheim/Documents/my-digital-garden/_notes/"

# Step 1: Sync notes from Obsidian folder to Jekyll site
echo "Syncing notes..."
rsync -av --delete "$SOURCE" "$TARGET"

# Step 2: Git add, commit, and push
cd "$TARGET/.."

echo "Adding files to Git..."
git add .

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
COMMIT_MSG="Sync notes at $TIMESTAMP"
echo "Committing with message: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

echo "Pushing to GitHub..."
git push origin main

echo "✅ Done! Your notes are live on Netlify."
