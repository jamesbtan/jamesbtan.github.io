#!/bin/sh

root=$(realpath "$(dirname "$0")"/..)

find ~/Documents/obsidian -path "*/_blog/*.md" -exec sh -c '"$1" "$3" > $("$2" "$3")' shell "$root"/scripts/obsidian-mangle.sh "$root"/scripts/obsidian-slug.sh {} \;
