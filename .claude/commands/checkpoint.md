---
description: Verify and propose a commit
allowed-tools: Bash(git status:*), Bash(git diff:*), Bash(dotnet build:*), Bash(dotnet test:*)
---
Run dotnet build and dotnet test. If both are green, show `git status --short` and propose
a conventional commit message (one line). Don't commit; I'll confirm. If red, stop and summarise failures.
