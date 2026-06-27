#!/usr/bin/env bash
set -euo pipefail

mkdir -p demo-repo
cd demo-repo
git init
git config user.name "Alice"
git config user.email "alice@example.com"

echo "# Demo App" > README.md
git add README.md
git commit -m "Initial commit"

git checkout -b feature/login

echo "login feature" >> app.txt
git add app.txt
git commit -m "Add login form"

git checkout master

git checkout -b feature/navbar

echo "navbar feature" >> app.txt
git add app.txt
git commit -m "Add navigation bar"

echo "Demo repository created."
echo "Run the merge and rebase examples from the README.md file."
