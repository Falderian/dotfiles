-- Execute your favorite apps at launch.
-- Migrated from exec-once:
-- https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("wl-clip-persist --clipboard regular --write-timeout 1000")
    hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("waybar")
    hl.exec_cmd("telegram-desktop -startintray")
    hl.exec_cmd("slack -u")
end)
