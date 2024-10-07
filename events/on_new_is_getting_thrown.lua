local event_manager = require("event_manager")
local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local game_data = require("game_data")
local log = _G.SLN_LOG

event_manager.create(
    {
        name = "SLN_ON_NEW_LOCAL_IS_GETTING_THROWN",
        key = vk_codes.VK_F10,
        func = function() return api.get_is_getting_thrown("Local") end,
    },
    function(value, state)
        game_data.set_local_is_getting_thrown(value)
    end
)

event_manager.create(
    {
        name = "SLN_ON_NEW_LOCAL_IS_GETTING_THROWN_KAMEO",
        key = vk_codes.VK_F10,
        func = function() return api.get_is_getting_thrown_kameo("Local") end,
    },
    function(value, state)
        game_data.set_local_is_getting_thrown_kameo(value)
    end
)