-- See https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = { top = 10, right = 15, bottom = 10, left = 15 }, -- was: 10, 15, 10, 15 (CSS order)
        border_size      = 2,
        layout           = "dwindle",
        resize_on_border = true,
        col = {
            active_border   = { colors = { "rgba(BF616Aff)", "rgba(3c0000ff)" }, angle = 45 },
            inactive_border = "rgba(3a3a3aff)",
        },
    },
})
