-- See https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    input = {
        kb_layout  = "us,ru",                       -- US and Russian layouts
        kb_variant = "",
        kb_model   = "",
        kb_options = "grp:win_space_toggle",        -- switch layouts with Super+Space
        kb_rules   = "evdev",

        follow_mouse = 1,

        sensitivity = 0,                            -- -1.0 to 1.0, 0 means no modification

        touchpad = {
            natural_scroll       = false,
            disable_while_typing = true,
        },
    },
})
