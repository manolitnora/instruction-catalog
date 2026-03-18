#!/bin/bash
set -e

TARGET="$HOME/.claude/CLAUDE.md"

if [ ! -f "$TARGET" ]; then
  echo "No Claude Code config found."
  exit 0
fi

# Find all installed instructions
installed=$(grep -o 'INSTRUCTION-CATALOG:[^:]*:START' "$TARGET" 2>/dev/null | sed 's/INSTRUCTION-CATALOG://;s/:START//' | sort -u)

if [ -z "$installed" ]; then
  echo "No instruction-catalog instructions are installed."
  exit 0
fi

echo "Installed instructions:"
echo ""

i=1
declare -a NAMES
for name in $installed; do
  echo "  $i) $name"
  NAMES[$i]="$name"
  i=$((i + 1))
done

echo ""
echo "  a) Remove all"
echo "  q) Quit"
echo ""
read -p "Choose (number, 'a' for all, 'q' to quit): " choice

remove_instruction() {
  local name="$1"
  sed -i '' "/<!-- INSTRUCTION-CATALOG:${name}:START -->/,/<!-- INSTRUCTION-CATALOG:${name}:END -->/d" "$TARGET"
  echo "  $name — removed"
}

if [ "$choice" = "q" ]; then
  echo "Bye."
  exit 0
elif [ "$choice" = "a" ]; then
  echo ""
  for name in $installed; do
    remove_instruction "$name"
  done
else
  if [ -n "${NAMES[$choice]}" ]; then
    echo ""
    remove_instruction "${NAMES[$choice]}"
  else
    echo "Invalid choice."
    exit 1
  fi
fi

echo ""
echo "Done."
