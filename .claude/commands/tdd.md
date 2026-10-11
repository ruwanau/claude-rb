---
description: Test-first implementation
argument-hint: <behaviour to implement>
---
Implement: $ARGUMENTS
1. Write failing xUnit tests first. Run dotnet test, show they fail.
2. Implement the minimum code to pass. Run dotnet test.
3. Refactor if needed, re-run tests.
Small diffs. Report the final test summary.
