#!/usr/bin/env bash
# waybar workspace indicator for niri
# outputs JSON for waybar custom module
set -o pipefail

NIRI_MSG="niri msg"

workspaces_json=$($NIRI_MSG workspaces 2>/dev/null)
if [ -z "$workspaces_json" ]; then
    echo '{"text": "niri not running", "class": "workspaces-error"}'
    exit 0
fi

# Build a pango-formatted workspace list
# Active workspace gets highlighted
result=""
while IFS= read -r ws; do
    id=$(echo "$ws" | jq -r '.id // .idx // empty')
    is_focused=$(echo "$ws" | jq -r '.is_focused // false')
    name=$(echo "$ws" | jq -r '.name // ""')
    display="${name:-$id}"

    if [ "$is_focused" = "true" ]; then
        result+="<span foreground='#BF616A' weight='bold'> $display </span>"
    else
        result+="<span foreground='#74777f'> $display </span>"
    fi
done < <(echo "$workspaces_json" | jq -c '.[]')

echo "{\"text\": \"$result\", \"class\": \"niri-workspaces\", \"tooltip\": \"Workspaces\"}"
