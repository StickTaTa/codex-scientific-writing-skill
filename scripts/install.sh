#!/usr/bin/env bash
set -euo pipefail

skill_home="${CODEX_HOME:-$HOME/.codex}/skills"
source_dir="$(cd "$(dirname "$0")/.." && pwd)/scientific-writing"
target_dir="$skill_home/scientific-writing"

mkdir -p "$skill_home"
rm -rf "$target_dir"
cp -R "$source_dir" "$target_dir"
echo "Installed scientific-writing to $target_dir"