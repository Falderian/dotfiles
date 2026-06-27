#!/usr/bin/env bash
# waybar window title for niri
set -o pipefail

windows_json=$(niri msg windows 2>/dev/null)
if [ -z "$windows_json" ]; then
    echo '{"text": "", "class": "window-title"}'
    exit 0
fi

title=$(echo "$windows_json" | jq -r '.[] | select(.is_focused == true or .is_active == true) | .title // ""' 2>/dev/null | head -1)
# Truncate
if [ ${#title} -gt 80 ]; then
    title="${title:0:77}..."
fi

echo "{\"text\": \"$title\", \"class\": \"window-title\"}"
