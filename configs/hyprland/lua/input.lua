-- Hyprland input configuration: keyboard layouts (us,ru), touchpad, mouse follow, sensitivity

hl.config({
    input = {
        kb_layout  = "us,ru",
        kb_variant = "",
        kb_model   = "",
        kb_options = "grp:win_space_toggle",
        kb_rules   = "evdev",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll       = false,
            disable_while_typing = true,
        },
    },
})
