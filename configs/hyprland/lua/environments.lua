-- Environment variables migrated from hypr/conf/environments.conf (hypr/conf/cursor.conf XCURSOR_SIZE also noted -- same value, not duplicated)

-- XDG Desktop Portal
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT (qt6ct takes precedence over orphaned environment.conf's qt5ct)
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- GTK
hl.env("GDK_SCALE", "1")

-- Mozilla
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Cursor (XCURSOR_SIZE also present in hypr/conf/cursor.conf with identical value)
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Adwaita")

-- AppImage
hl.env("APPIMAGELAUNCHER_DISABLE", "1")

-- OZONE
hl.env("OZONE_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
