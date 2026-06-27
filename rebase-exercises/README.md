# Git Rebase Training

This repository contains branches designed for practicing interactive rebasing and conflict resolution.

Branches:
- `rebase-training/base`: base content for the exercise.
- `rebase-training/feature-a`: changes that edit the same lines as `feature-b`.
- `rebase-training/feature-b`: conflicting changes for rebase practice.
- `rebase-training/interactive`: a sequence of commits to practice `git rebase -i` squash, reorder, and edit.

Practice paths:
1. Checkout `rebase-training/feature-b` and run:
   git rebase rebase-training/feature-a
   Resolve conflicts in `rebase-exercises/conflict-file.txt`.

2. Checkout `rebase-training/interactive` and run:
   git rebase -i rebase-training/base
   Squash, reorder, or edit the three commits in the branch.

