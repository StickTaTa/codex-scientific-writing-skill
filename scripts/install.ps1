param(
    [string]$SkillHome = $(if ($env:CODEX_HOME) { Join-Path $env:CODEX_HOME "skills" } else { Join-Path $HOME ".codex\skills" })
)

$source = Join-Path $PSScriptRoot "..\scientific-writing"
$target = Join-Path $SkillHome "scientific-writing"

New-Item -ItemType Directory -Force $SkillHome | Out-Null
if (Test-Path $target) {
    Remove-Item -Recurse -Force $target
}
Copy-Item -Recurse -Force $source $target
Write-Output "Installed scientific-writing to $target"
