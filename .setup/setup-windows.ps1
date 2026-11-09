# RVT-Vault setup for Windows (README steps 1-5).
# Open PowerShell (Start menu, type "PowerShell"; no admin needed) and paste:
#   irm https://raw.githubusercontent.com/criatianhernandez02-hash/RVT-Vault/claude/cloud-environment-setup-ldu8h3/.setup/setup-windows.ps1 | iex
#
# What it does: installs Git and Obsidian with winget if they are missing, clones the
# vault to Documents\RVT-Vault, sets the Git plugin to sync every 10 minutes, and opens
# the vault in Obsidian. It changes nothing else on your computer. Safe to run again.

$ErrorActionPreference = "Stop"
$RepoUrl = "https://github.com/criatianhernandez02-hash/RVT-Vault.git"
$Vault   = Join-Path $HOME "Documents\RVT-Vault"

function Step($msg) { Write-Host "`n==> $msg" -ForegroundColor Cyan }
function Has($cmd)  { return [bool](Get-Command $cmd -ErrorAction SilentlyContinue) }
function RefreshPath {
    $env:Path = [Environment]::GetEnvironmentVariable("Path", "Machine") + ";" +
                [Environment]::GetEnvironmentVariable("Path", "User")
}

if (-not (Has winget)) {
    Write-Host "This Windows doesn't have 'winget' (App Installer). Install Git and Obsidian by hand from:"
    Write-Host "  https://git-scm.com/download/win   and   https://obsidian.md/download"
    Write-Host "then run this command again."
    Start-Process "https://obsidian.md/download"
    Start-Process "https://git-scm.com/download/win"
    return
}

Step "Step 1 of 5: Git"
if (Has git) {
    Write-Host "Git is already installed: $(git --version)"
} else {
    winget install --id Git.Git -e --source winget --accept-package-agreements --accept-source-agreements
    RefreshPath
    if (-not (Has git)) {
        throw "Git was installed but PowerShell can't see it yet. Close this window, open a new PowerShell, and paste the command again."
    }
}

Step "Step 1 of 5: Obsidian"
$obsidianExe = @(
    (Join-Path $env:LOCALAPPDATA "Programs\Obsidian\Obsidian.exe"),
    (Join-Path $env:LOCALAPPDATA "Obsidian\Obsidian.exe"),
    "C:\Program Files\Obsidian\Obsidian.exe"
) | Where-Object { Test-Path $_ } | Select-Object -First 1
if ($obsidianExe) {
    Write-Host "Obsidian is already installed."
} else {
    winget install --id Obsidian.Obsidian -e --source winget --accept-package-agreements --accept-source-agreements
}

Step "Step 2 of 5: Clone the vault into $Vault"
if (Test-Path (Join-Path $Vault ".git")) {
    Write-Host "Already cloned; pulling the latest notes."
    git -C $Vault pull
} else {
    New-Item -ItemType Directory -Force (Split-Path $Vault) | Out-Null
    git clone $RepoUrl $Vault
}

Step "Your name and email on commits (asked once)"
if (-not (git config --global user.name)) {
    $n = Read-Host "Your name as it should appear on commits (for example: Cris)"
    git config --global user.name $n
}
if (-not (git config --global user.email)) {
    $e = Read-Host "The email on your GitHub account"
    git config --global user.email $e
}

Step "Step 5 of 5: Git plugin settings (sync every 10 minutes, pull on startup)"
$pluginDir    = Join-Path $Vault ".obsidian\plugins\obsidian-git"
$settingsPath = Join-Path $pluginDir "data.json"
New-Item -ItemType Directory -Force $pluginDir | Out-Null
if (-not (Test-Path $settingsPath)) {
    @{ autoSaveInterval = 10; autoPullInterval = 10; autoPullOnBoot = $true; disablePopups = $false } |
        ConvertTo-Json | Set-Content -Encoding UTF8 $settingsPath
    Write-Host "Written. (This file stays on this computer; it is not synced.)"
} else {
    Write-Host "Plugin settings already exist; left as they are."
}

Step "Step 3 of 5: Open the vault in Obsidian"
$encoded = [uri]::EscapeDataString($Vault)
Start-Process "obsidian://open?path=$encoded"

Write-Host ""
Write-Host "If Obsidian shows its welcome screen instead of your notes: click 'Open folder as vault' and pick" -ForegroundColor Yellow
Write-Host "  $Vault" -ForegroundColor Yellow
Write-Host ""
Write-Host "Step 4 of 5 is one click inside Obsidian: when it says the vault has community plugins," -ForegroundColor Green
Write-Host "choose 'Trust author and enable plugins'. The first sync opens a browser window to sign in to GitHub once." -ForegroundColor Green
Write-Host "Then open Home.md and you're set."
