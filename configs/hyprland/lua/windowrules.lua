-- windowrules.conf migrated to Lua — hl.window_rule() entries

-- clipse (float + size combined from two source rules)
hl.window_rule({
    name  = "clipse",
    match = { class = "clipse" },
    float = true,
    size  = "622 652", -- REVIEW: size field not in template; assumed string like move
})

-- Browser picture-in-picture
hl.window_rule({
    name  = "browser-pip",
    match = { class = "(firefox|floorp|helium)", title = "^Picture-in-Picture$" },
    float = true,
})

-- TUI applications in terminal
hl.window_rule({
    name  = "tui-apps",
    match = { title = "(bluetuith|nmtui|pulsemixer)" },
    float = true,
})

-- btop (float + size + center combined from three source rules)
hl.window_rule({
    name   = "btop",
    match  = { title = "btop" },
    float  = true,
    size   = "(monitor_w*0.7) (monitor_h*0.7)", -- REVIEW: size field not in template; assumed string like move
    center = true, -- REVIEW: center field not in template
})

-- Screenshare / portal dialogs
hl.window_rule({
    name  = "xdg-desktop-portal",
    match = { class = "xdg-desktop-portal" },
    float = true,
})
