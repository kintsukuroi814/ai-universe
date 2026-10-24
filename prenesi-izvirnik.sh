#!/usr/bin/env bash
set -euo pipefail
if ! command -v wget >/dev/null 2>&1; then
  printf 'Manjka wget. Namestite ga s paketnim upravljalnikom svojega sistema.\n' >&2
  exit 1
fi
printf 'Prenos javne strani v mapo izvirnik/. Prekinitev: Ctrl+C\n'
wget --mirror --convert-links --adjust-extension --page-requisites \
  --no-parent --wait=1 --random-wait --timeout=30 --tries=2 \
  --domains=igor-plohl.info --directory-prefix=izvirnik \
  'https://igor-plohl.info/'
