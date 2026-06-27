# Git Merge vs Rebase Tutorial

This repository explains the difference between `git merge` and `git rebase` using a simple role-play between two developers: Alice and Bob.

## The short version

- `git merge` combines branches and keeps the branch history intact.
- `git rebase` moves your branch commits onto the latest base branch, giving a cleaner, linear history.

## Role-play: Alice and Bob

Alice and Bob are working on the same project.

- Alice works on a feature branch called `feature/login`.
- Bob works on another feature branch called `feature/navbar`.
- Both branches start from the same `main` branch.

### Initial state

```bash
git checkout main
git pull origin main

git checkout -b feature/login
git checkout main
git checkout -b feature/navbar
```

### Alice makes a change

```bash
git checkout feature/login
# add login form

git add .
git commit -m "Add login form"
```

### Bob makes a different change

```bash
git checkout feature/navbar
# add navigation bar

git add .
git commit -m "Add navigation bar"
```

At this point, both branches have different commits based on the same `main` history.

## Example 1: Git merge

If Bob wants to bring Alice's work into his branch before sharing it, he can merge `main` into his branch.

```bash
git checkout feature/navbar
git merge main
```

Then, when Bob is ready to integrate his work into `main`, he merges his branch into `main`:

```bash
git checkout main
git merge feature/navbar
```

### What happens?

- A merge commit is created.
- The history shows that two branches were combined.
- This is good when you want to preserve the fact that work happened in parallel.

## Example 2: Git rebase

Bob can also replay his commits on top of the latest `main` branch:

```bash
git checkout feature/navbar
git rebase main
```

Then he fast-forwards `main`:

```bash
git checkout main
git merge feature/navbar
```

### What happens?

- Bob's commits are replayed as if they were created after the latest `main` changes.
- The history stays linear and tidy.
- This is useful when you want a cleaner commit history.

## Alice and Bob in plain language

Alice says:

> "I want to keep the branch history visible so everyone can see the work happened in parallel."

Bob says:

> "I want a cleaner history, so I will rebase my work onto the latest `main`."

## When to use each

Use `git merge` when:

- You want to preserve the branch history.
- You are working in a shared team environment and want a clear record of parallel work.

Use `git rebase` when:

- You want a clean, linear history.
- You are working on a feature branch and want to update it before merging.

## Important warning

Rebasing rewrites commit history. Do not rebase commits that other people already pushed and are using.

## Summary

- `merge` = combine and preserve history.
- `rebase` = replay and rewrite history for a cleaner line.
