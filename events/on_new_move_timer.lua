local event_manager = require("event_manager")
local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local game_data = require("game_data")
local log = _G.SLN_LOG

event_manager.create(
    {
        name = "SLN_ON_NEW_LOCAL_MOVE_TIMER",
        key = vk_codes.VK_F10,
        func = function() return api.get_move_timer("Local") end,
    },
    function(value, state)
        if value == 0 then
            game_data.set_local_move_timer(value)
        elseif value == 1 then
            game_data.set_local_move_timer(value)
        else
            game_data.increase_local_move_timer()
        end
    end
)