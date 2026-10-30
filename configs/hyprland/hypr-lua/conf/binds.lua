-- See https://wiki.hypr.land/Configuring/Basics/Binds/ and
-- https://wiki.hypr.land/Configuring/Basics/Dispatchers/

local mainMod = "SUPER"

-- ═══════════════════════════════════════════════════════════════
-- WINDOW MANAGEMENT
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + RETURN",      hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + Q",           hl.dsp.window.close())
hl.bind(mainMod .. " + CTRL + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F",           hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + P",           hl.dsp.window.pseudo())
hl.bind(mainMod .. " + TAB",         hl.dsp.focus({ workspace = "e+1" }))

-- ═══════════════════════════════════════════════════════════════
-- APPLICATION LAUNCHERS
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("~/.config/ml4w/settings/filemanager.sh"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("~/.config/ml4w/settings/browser.sh"))

-- ═══════════════════════════════════════════════════════════════
-- ROFI MENUS
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + R",        hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/appLauncher.sh"))
hl.bind(mainMod .. " + W",        hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/windowsLauncher.sh"))
hl.bind("ALT + TAB",              hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/windowsLauncher.sh"))
hl.bind(mainMod .. " + N",        hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/notificationsHistory.sh"))
hl.bind(mainMod .. " + M",        hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/power_menu.sh"))
hl.bind(mainMod .. " + V",        hl.dsp.exec_cmd("~/.config/hypr/scripts/clipboardHistory.sh"))

-- ═══════════════════════════════════════════════════════════════
-- FOCUS (Arrow keys + hjkl)
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + H",     hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L",     hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K",     hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J",     hl.dsp.focus({ direction = "down" }))

-- ═══════════════════════════════════════════════════════════════
-- RESIZE WINDOWS
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -20, y = 0 }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 20,  y = 0 }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0,   y = -20 }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0,   y = 20 }))

-- ═══════════════════════════════════════════════════════════════
-- MOUSE WINDOW OPERATIONS
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- ═══════════════════════════════════════════════════════════════
-- WORKSPACES
-- ═══════════════════════════════════════════════════════════════
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- ═══════════════════════════════════════════════════════════════
-- SCREENSHOTS
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + F12",            hl.dsp.exec_cmd("hyprshot -m active -o ~/Pictures/Screenshots"))
hl.bind(mainMod .. " + CTRL + F12",     hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))
hl.bind(mainMod .. " + SHIFT + F12",    hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))

-- ═══════════════════════════════════════════════════════════════
-- MEDIA CONTROLS
-- ═══════════════════════════════════════════════════════════════
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"),       { locked = true })

hl.bind(mainMod .. " + KP_LEFT",   hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind(mainMod .. " + KP_RIGHT",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind(mainMod .. " + KP_BEGIN",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(mainMod .. " + KP_INSERT", hl.dsp.exec_cmd("playerctld shift"),     { locked = true })

-- ═══════════════════════════════════════════════════════════════
-- VOLUME (binde -> repeating)
-- ═══════════════════════════════════════════════════════════════
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),   { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),  { locked = true, repeating = true })

-- ═══════════════════════════════════════════════════════════════
-- SYSTEM
-- ═══════════════════════════════════════════════════════════════
hl.bind(mainMod .. " + CTRL + L", hl.dsp.exec_cmd("systemctl suspend"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("~/.config/ml4w/scripts/reload-waybar.sh"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/ml4w/scripts/reload-hyprpaper.sh"))

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"),  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl s +10%"),  { locked = true, repeating = true })
