#!/usr/bin/env bash
# Pull the Wikipedia dummy data fixture into public/wikipedia.json.
set -euo pipefail

mkdir -p public
curl -fsSL --max-time 60 \
  https://raw.githubusercontent.com/jacomyal/sigma.js/main/packages/website/public/data/wikipedia.json \
  -o public/wikipedia.json
printf 'Fetched Wikipedia dummy data to public/wikipedia.json\n'
