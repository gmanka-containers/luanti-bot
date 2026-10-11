local max_wear = 65535 * 0.99
local digging = false

core.settings:set_bool("continuous_digging", false)
core.register_globalstep(function()
    local player = core.localplayer
    local item = player and player:get_wielded_item()
    local should_dig = core.settings:get_bool("bot_autodig") and item
        and item:get_name():find("^mcl_tools:pick_")
        and item:get_wear() < max_wear or false

    if should_dig ~= digging then
        digging = should_dig
        core.settings:set_bool("continuous_digging", digging)
    end
end)
