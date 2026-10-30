-- binds.lua -- Hyprland keybindings migrated from hypr/conf/binds.conf

local mainMod = "SUPER"

-- =================================================================
-- WINDOW MANAGEMENT
-- =================================================================
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + CTRL + SPACE", hl.dsp.window.float({ action = "toggle" }))
-- REVIEW: hl.dsp.window.fullscreen() inferred from pattern (cf. close/float/pseudo); not confirmed in template
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

-- =================================================================
-- APPLICATION LAUNCHERS
-- =================================================================
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("~/.config/ml4w/settings/filemanager.sh"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("~/.config/ml4w/settings/browser.sh"))

-- =================================================================
-- ROFI MENUS
-- =================================================================
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/appLauncher.sh"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/windowsLauncher.sh"))
hl.bind("ALT + TAB", hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/windowsLauncher.sh"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/notificationsHistory.sh"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("pkill -x rofi || ~/.config/hypr/scripts/power_menu.sh"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("~/.config/hypr/scripts/clipboardHistory.sh"))

-- =================================================================
-- LAYOUT CONTROLS
-- =================================================================
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))

-- =================================================================
-- FOCUS (Arrow Keys + hjkl)
-- =================================================================
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- =================================================================
-- RESIZE WINDOWS
-- =================================================================
-- REVIEW: resizeactive dispatcher — no hl.dsp.* equivalent in template; using hyprctl dispatch fallback
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.exec_cmd("hyprctl dispatch resizeactive -20 0"))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 20 0"))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 -20"))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 20"))

-- =================================================================
-- MOUSE WINDOW OPERATIONS
-- =================================================================
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- =================================================================
-- WORKSPACES
-- =================================================================
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- =================================================================
-- SCREENSHOTS
-- =================================================================
hl.bind(mainMod .. " + F12", hl.dsp.exec_cmd("hyprshot -m active -o ~/Pictures/Screenshots"))
hl.bind(mainMod .. " + CTRL + F12", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))
hl.bind(mainMod .. " + SHIFT + F12", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))

-- =================================================================
-- MEDIA CONTROLS
-- =================================================================
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind(mainMod .. " + KP_LEFT", hl.dsp.exec_cmd("playerctl previous"))
hl.bind(mainMod .. " + KP_RIGHT", hl.dsp.exec_cmd("playerctl next"))
hl.bind(mainMod .. " + KP_BEGIN", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind(mainMod .. " + KP_INSERT", hl.dsp.exec_cmd("playerctld shift"))

-- =================================================================
-- VOLUME
-- =================================================================
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })

-- =================================================================
-- SYSTEM
-- =================================================================
hl.bind(mainMod .. " + CTRL + L", hl.dsp.exec_cmd("systemctl suspend"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("~/.config/ml4w/scripts/reload-waybar.sh"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/ml4w/scripts/reload-hyprpaper.sh"))

-- =================================================================
-- BRIGHTNESS
-- =================================================================
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s +10%"), { locked = true, repeating = true })
