-- Monitor configuration migrated from hypr/conf/monitor.conf
-- REVIEW: bitdepth field name not confirmed in template; verify against Hyprland Lua API
-- REVIEW: cm field name not confirmed in template; verify against Hyprland Lua API
-- REVIEW: sdrbrightness field name not confirmed in template; verify against Hyprland Lua API
-- REVIEW: sdrsaturation field name not confirmed in template; verify against Hyprland Lua API
hl.monitor({
    output        = "",
    mode          = "highrr",
    position      = "0x0",
    scale         = 1,
    bitdepth      = 10,
    cm            = "hdr",
    sdrbrightness = 1.25,
    sdrsaturation = 0.98,
})
