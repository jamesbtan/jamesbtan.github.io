#!/bin/sh

root=$(realpath "$(dirname "$0")"/..)

find "$root" -not -path "$root"'/.bak/*' -name "*.md" -exec "$root"/scripts/obsidian-clean-i.sh {} \;
