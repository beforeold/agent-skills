#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
src="$repo_root/skills"
dst="${CODEX_SKILLS_DIR:-$HOME/.codex/skills}"

mkdir -p "$dst"

installed=0

for skill in "$src"/*; do
  [ -d "$skill" ] || continue
  [ -f "$skill/SKILL.md" ] || continue

  name="$(basename "$skill")"
  target="$dst/$name"

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "skip: $target exists and is not a symlink" >&2
    continue
  fi

  ln -sfn "$skill" "$target"
  echo "linked: $target -> $skill"
  installed=$((installed + 1))
done

if [ "$installed" -eq 0 ]; then
  echo "no skills found in $src"
else
  echo "installed $installed skill(s)"
fi

