# Working style

- I'm a senior .NET engineer. Be concise; include explanations starting from basics and gradually move into expert level.

- Prefer small, surgical diffs. Never rewrite files wholesale unless asked.

- For anything touching >1 file, propose a plan first and wait for approval.



# C# / .NET conventions

- Target latest LTS .NET; nullable enabled; file-scoped namespaces.

- Use `decimal` for money and prices, never `double`.

- Prefer immutable records for value types/DTOs.

- Async all the way: no `.Result` / `.Wait()`; pass CancellationToken through.

- DI via constructor injection; no service locator.

- Thread safety: prefer immutable snapshots + atomic swap over fine-grained locks.



# Testing

- xUnit + FluentAssertions. Name tests Method_Scenario_Expected.

- Write or update tests with every behaviour change.

- After any code change, run `dotnet build` then `dotnet test` and report results.

- Never delete or weaken a failing test to make it pass; flag it instead.



# Git

- Don't commit unless I ask. Suggest a commit message when a step is green.

