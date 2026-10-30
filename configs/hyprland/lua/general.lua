-- Migrated from hypr/conf/general.conf
hl.config({
    general = {
        gaps_in = 5,
        -- REVIEW: per-side gaps; if Hyprland rejects a table here, fall back to hl.exec_cmd('hyprctl keyword general:gaps_out 10,15,10,15')
        gaps_out = {10, 15, 10, 15},
        border_size = 2,
        layout = "dwindle",
        resize_on_border = true,
        col = {
            active_border = { colors = {"rgba(BF616Aff)", "rgba(3c0000ff)"}, angle = 45 },
            inactive_border = "rgba(3a3a3aff)",
        },
    },
})
