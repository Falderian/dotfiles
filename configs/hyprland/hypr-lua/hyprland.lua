-- =============================================================
--  HYPRLAND LUA CONFIG (MIGRATED)
--  -------------------------------------------------------------
--  Migrated from the old hyprlang configs:
--    hypr/hyprland.conf  +  hypr/conf/*.conf
--  into the Hyprland 0.55+ Lua API.
--
--  Install as ~/.config/hypr/hyprland.lua
--  (replaces the deprecated hyprland.conf).
-- =============================================================

require("conf.monitors")
require("conf.autostart")
require("conf.environment")
require("conf.input")
require("conf.general")
require("conf.decoration")
require("conf.animations")
require("conf.layouts")
require("conf.misc")
require("conf.windowrules")
require("conf.binds")
