local event_manager = require("event_manager")
local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local game_data = require("game_data")
local log = _G.SLN_LOG

event_manager.create(
    {
        name = "SLN_ON_LOCAL_DAMAGE_TAKEN",
        key = vk_codes.VK_F10,
        func = function() return api.get_health_float("Local") end,
    },
    function(value, state)
        local move_timer = api.get_move_timer("Opponent")
        local move_state, move_data = game_data.get_move_data("Local")
        local op_move_state, op_move_data = game_data.get_move_data("Opponent")
        local local_hit_state = game_data.get_local_hit_state()
        local op_hit_state = game_data.get_opponent_hit_state()

        if op_hit_state < 2 and not move_state and op_move_state then
            --print(move_timer, op_move_data.move, op_move_data.move_string, op_move_data.kommand)
        end
    end
)