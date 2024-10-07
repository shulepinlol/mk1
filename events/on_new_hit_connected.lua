local event_manager = require("event_manager")
local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local game_data = require("game_data")
local log = _G.SLN_LOG

event_manager.create(
    {
        name = "SLN_ON_NEW_LOCAL_HIT_CONNECTED",
        key = vk_codes.VK_F10,
        func = function() return api.get_hit_connected("Local") end,
    },
    function(value, state)
        game_data.set_local_hit_state(value)
    end
)

event_manager.create(
    {
        name = "SLN_ON_NEW_OPPONENT_HIT_CONNECTED",
        key = vk_codes.VK_F10,
        func = function() return api.get_hit_connected("Opponent") end,
    },
    function(value, state)
        game_data.set_opponent_hit_state(value)
    end
)