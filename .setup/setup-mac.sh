#!/usr/bin/env bash
# RVT-Vault setup for macOS (README steps 1-5).
# Open Terminal (Spotlight, type "Terminal") and paste:
#   bash <(curl -fsSL https://raw.githubusercontent.com/criatianhernandez02-hash/RVT-Vault/claude/cloud-environment-setup-ldu8h3/.setup/setup-mac.sh)
#
# What it does: installs Homebrew if missing (it asks for your Mac password once), then
# Git, Obsidian and Git Credential Manager (so GitHub sign-in is a browser window instead
# of a token), clones the vault to ~/Documents/RVT-Vault, sets the Git plugin to sync
# every 10 minutes, and opens the vault in Obsidian. Safe to run again.
#
# To put the vault somewhere else, set the location first, then run the command above:
#   export RVT_VAULT_DIR="$HOME/Notes/RVT-Vault"

set -euo pipefail
REPO_URL="https://github.com/criatianhernandez02-hash/RVT-Vault.git"
VAULT="${RVT_VAULT_DIR:-$HOME/Documents/RVT-Vault}"
echo "Vault location: $VAULT"
step() { printf '\n\033[1;36m==> %s\033[0m\n' "$1"; }

step "Step 1 of 5: Homebrew (installs the other tools)"
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/tty
fi
if [ -x /opt/homebrew/bin/brew ]; then eval "$(/opt/homebrew/bin/brew shellenv)"; fi
if [ -x /usr/local/bin/brew ];    then eval "$(/usr/local/bin/brew shellenv)"; fi

step "Step 1 of 5: Git, Obsidian, Git Credential Manager"
if git --version >/dev/null 2>&1; then echo "Git is already installed: $(git --version)"; else brew install git; fi
if [ -d "/Applications/Obsidian.app" ]; then echo "Obsidian is already installed."; else brew install --cask obsidian; fi
if ! command -v git-credential-manager >/dev/null 2>&1; then brew install --cask git-credential-manager; fi
git-credential-manager configure >/dev/null 2>&1 || true

step "Step 2 of 5: Clone the vault into $VAULT"
if [ -d "$VAULT/.git" ]; then
  echo "Already cloned; pulling the latest notes."
  git -C "$VAULT" pull
else
  mkdir -p "$(dirname "$VAULT")"
  git clone "$REPO_URL" "$VAULT"
fi

step "Your name and email on commits (asked once)"
if [ -z "$(git config --global user.name || true)" ]; then
  read -r -p "Your name as it should appear on commits (for example: Cris): " n </dev/tty
  git config --global user.name "$n"
fi
if [ -z "$(git config --global user.email || true)" ]; then
  read -r -p "The email on your GitHub account: " e </dev/tty
  git config --global user.email "$e"
fi

step "Step 5 of 5: Git plugin settings (sync every 10 minutes, pull on startup)"
PLUGIN_DIR="$VAULT/.obsidian/plugins/obsidian-git"
mkdir -p "$PLUGIN_DIR"
if [ ! -f "$PLUGIN_DIR/data.json" ]; then
  cat > "$PLUGIN_DIR/data.json" <<'EOF'
{
  "autoSaveInterval": 10,
  "autoPullInterval": 10,
  "autoPullOnBoot": true,
  "disablePopups": false
}
EOF
  echo "Written. (This file stays on this computer; it is not synced.)"
else
  echo "Plugin settings already exist; left as they are."
fi

step "Step 3 of 5: Open the vault in Obsidian"
ENCODED=$(python3 -c 'import sys, urllib.parse; print(urllib.parse.quote(sys.argv[1]))' "$VAULT")
open "obsidian://open?path=$ENCODED" || open -a Obsidian

printf '\n\033[1;33mIf Obsidian shows its welcome screen instead of your notes: click "Open folder as vault" and pick\n  %s\033[0m\n' "$VAULT"
printf '\n\033[1;32mStep 4 of 5 is one click inside Obsidian: when it says the vault has community plugins,\nchoose "Trust author and enable plugins". The first sync opens a browser window to sign in to GitHub once.\033[0m\n'
echo "Then open Home.md and you're set."
