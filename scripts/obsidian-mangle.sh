#!/bin/sh

root=$(dirname "$(realpath "$0")")
. "$root"/obsidian.sh

mangle_file() {
  yq -y '.taxonomies.tags = .tags | delpaths([["tags"], ["related"]]) | .taxonomies.tags += ["source/obsidian"]'
}

echo "---"
frontmatter "$1" | mangle_file
echo "---"
content "$1"
