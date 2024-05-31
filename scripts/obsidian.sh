#!/bin/sh

frontmatter() {
  awk '/^---$/ {count++} count == 2 {exit} NR != 1 {print}' "$1"
}
content() {
  awk 'count >= 2 {print} /^---$/ {count++}' "$1"
}
