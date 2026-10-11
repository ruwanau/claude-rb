param([string]$Target = (Get-Location))
$ErrorActionPreference = 'Stop'
$kit = $PSScriptRoot
$Target = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($Target).TrimEnd('\')
if ($Target -eq $kit.TrimEnd('\')) { throw "Target is the kit folder itself ($kit). Pass -Target <project folder>." }
New-Item -ItemType Directory -Force "$Target\.claude\commands" | Out-Null
Copy-Item "$kit\.claude\commands\*.md" "$Target\.claude\commands\" -Force
New-Item -ItemType Directory -Force "$Target\.claude\agents" | Out-Null
Copy-Item "$kit\.claude\agents\*.md" "$Target\.claude\agents\" -Force
if (-not (Test-Path "$Target\.claude\settings.json")) { Copy-Item "$kit\.claude\settings.json" "$Target\.claude\settings.json" }
if (-not (Test-Path "$Target\CLAUDE.md")) { Copy-Item "$kit\CLAUDE.md" "$Target\CLAUDE.md" }
Write-Host "Claude kit installed into $Target"
