#!/bin/bash
set -e

INSTRUCTIONS_DIR="$(dirname "$0")/instructions"
TARGET="$HOME/.claude/CLAUDE.md"

# Ensure Claude Code config exists
mkdir -p "$HOME/.claude"
touch "$TARGET"

echo "instruction-catalog installer"
echo "============================="
echo ""
echo "Available instructions:"
echo ""

# List all instructions
i=1
declare -a FILES
for f in "$INSTRUCTIONS_DIR"/*.md; do
  name=$(basename "$f" .md)
  # Get the first line after "**Activates:**"
  desc=$(grep "^\*\*Activates:\*\*" "$f" | head -1 | sed 's/\*\*Activates:\*\* //')

  # Check if already installed
  marker="INSTRUCTION-CATALOG:${name}:START"
  if grep -q "$marker" "$TARGET" 2>/dev/null; then
    status="[installed]"
  else
    status=""
  fi

  echo "  $i) $name — $desc $status"
  FILES[$i]="$f"
  i=$((i + 1))
done

echo ""
echo "  a) Install all"
echo "  q) Quit"
echo ""
read -p "Choose (number, 'a' for all, 'q' to quit): " choice

install_instruction() {
  local file="$1"
  local name=$(basename "$file" .md)
  local marker_start="<!-- INSTRUCTION-CATALOG:${name}:START -->"
  local marker_end="<!-- INSTRUCTION-CATALOG:${name}:END -->"

  # Check if already installed
  if grep -q "INSTRUCTION-CATALOG:${name}:START" "$TARGET" 2>/dev/null; then
    echo "  $name — already installed, skipping"
    return
  fi

  # Extract the instruction block (between ```markdown and ```)
  local block=$(sed -n '/^```markdown$/,/^```$/p' "$file" | sed '1d;$d')

  if [ -z "$block" ]; then
    echo "  $name — no instruction block found, skipping"
    return
  fi

  # Append with markers
  echo "" >> "$TARGET"
  echo "$marker_start" >> "$TARGET"
  echo "$block" >> "$TARGET"
  echo "$marker_end" >> "$TARGET"

  echo "  $name — installed"
}

if [ "$choice" = "q" ]; then
  echo "Bye."
  exit 0
elif [ "$choice" = "a" ]; then
  echo ""
  for f in "$INSTRUCTIONS_DIR"/*.md; do
    install_instruction "$f"
  done
else
  if [ -n "${FILES[$choice]}" ]; then
    echo ""
    install_instruction "${FILES[$choice]}"
  else
    echo "Invalid choice."
    exit 1
  fi
fi

echo ""
echo "Done. Active in every Claude Code session."
