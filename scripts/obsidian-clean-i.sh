#!/bin/sh

root=$(dirname "$(realpath "$0")")
. "$root"/obsidian.sh

# perhaps simpler, every obsidian file is mangled with an "obs-" prefix
is_from_obsidian() {
  yq 'if .taxonomies.tags | index("source/obsidian") then error("from obsidian") end' >/dev/null 2>&1
}

mkdir -p .bak
if ! frontmatter "$1" | is_from_obsidian; then
  printf "\t%s\n" "$1"
  mv "$1" .bak
fi
