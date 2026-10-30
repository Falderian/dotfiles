-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Clipse (clipboard manager)
hl.window_rule({ name = "clipse-float", match = { class = "clipse" }, float = true })
hl.window_rule({ name = "clipse-size",  match = { class = "clipse" }, size = "622 652" })

-- PiP for browsers
hl.window_rule({
    name  = "browser-pip",
    match = { class = "(firefox|floorp|helium)", title = "^Picture-in-Picture$" },
    float = true,
})

-- TUI apps in foot
hl.window_rule({ name = "tui-float", match = { title = "(bluetuith|nmtui|pulsemixer)" }, float = true })

-- btop
hl.window_rule({ name = "btop-float",  match = { title = "btop" }, float = true })
hl.window_rule({ name = "btop-size",   match = { title = "btop" }, size = "(monitor_w*0.7) (monitor_h*0.7)" })
hl.window_rule({ name = "btop-center", match = { title = "btop" }, center = true })

-- Screenshare / portal dialogs
hl.window_rule({ name = "portal-float", match = { class = "xdg-desktop-portal" }, float = true })
