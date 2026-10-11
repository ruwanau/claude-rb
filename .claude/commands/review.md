---
description: Senior review of uncommitted changes
allowed-tools: Bash(git diff:*), Bash(git status:*)
---
## Changes
!`git status --short`
!`git diff HEAD`

Review the diff above as a strict senior .NET reviewer. Check:
- Correctness + edge cases; decimal for money
- Thread safety, async misuse (.Result/.Wait, missing CancellationToken)
- Error handling, input validation
- Test coverage of the new behaviour
- Unnecessary complexity or scope creep
Output: issues ranked High/Med/Low with file:line and a one-line fix. No praise.
