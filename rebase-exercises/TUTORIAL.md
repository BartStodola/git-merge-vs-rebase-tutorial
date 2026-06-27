# Rebase Practice Tutorial

## Goal
Practice interactive rebasing and conflict resolution using the prepared branches in this repo.

## Branches
- `rebase-training/base`: Base branch with common exercise files.
- `rebase-training/feature-a`: Feature branch with one version of a conflicting change.
- `rebase-training/feature-b`: Feature branch with a conflicting change on the same line.
- `rebase-training/interactive`: Branch with multiple small commits for `git rebase -i` practice.

## Exercise 1: Resolve a rebase conflict

1. Checkout the conflicting branch:
   ```sh
git checkout rebase-training/feature-b
```
2. Rebase onto the other feature branch:
   ```sh
git rebase rebase-training/feature-a
```
3. Git will stop because of a conflict in `rebase-exercises/conflict-file.txt`.
4. Open the file and resolve the conflict by choosing the correct text.
5. Stage the resolved file:
   ```sh
git add rebase-exercises/conflict-file.txt
```
6. Continue the rebase:
   ```sh
git rebase --continue
```

## Exercise 2: Interactive rebase practice

1. Checkout the interactive branch:
   ```sh
git checkout rebase-training/interactive
```
2. Start an interactive rebase onto the base branch:
   ```sh
git rebase -i rebase-training/base
```
3. In the editor, try one or more of these actions:
   - squash commits
   - reorder commits
   - edit a commit message
   - drop a commit
4. Save and close the editor to apply the changes.
5. If the rebase stops, resolve any conflicts, then run:
   ```sh
git rebase --continue
```

## Notes
- Use `git log --oneline --graph --all` to inspect branch history before and after rebasing.
- Use `git status` to see the current rebase state and conflicted files.
- If you want to abort a rebase, use:
  ```sh
git rebase --abort
```

Encoding
utf8
