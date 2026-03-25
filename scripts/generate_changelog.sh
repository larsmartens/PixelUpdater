#!/bin/sh
set -eu

current_tag="${1:-$(git describe --tags --abbrev=0)}"
output="${2:-changelog.md}"
current_ref="${3:-$current_tag}"

previous_tag="$(git tag --merged "$current_ref" --sort=-creatordate | grep -Fxv "$current_tag" | head -n 1 || true)"

if [ -n "$previous_tag" ]; then
  range="${previous_tag}..${current_ref}"
  range_label="${previous_tag}..${current_tag}"
else
  range="${current_ref}"
  range_label="initial..${current_tag}"
fi

{
  printf '# %s

' "$current_tag"
  printf '_Commit titles and messages for `%s`._

' "$range_label"
  git log --reverse --no-merges --date=short     --format='## %s%n%n%b%n- Commit: `%h`%n- Author: %an%n- Date: %ad%n'     $range
} > "$output"
