#!/bin/sh

root=$(realpath "$(dirname "$0")"/..)
printf "%s"/content/blog/ "$root"
echo "${1#~/Documents/obsidian/}" | sed 's,/,-,g;s,_blog-,,;s,^,obs-,'
