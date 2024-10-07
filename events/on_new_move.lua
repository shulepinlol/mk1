local event_manager = require("event_manager")
local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local game_data = require("game_data")
local log = _G.SLN_LOG

event_manager.create(
    {
        name = "SLN_ON_NEW_LOCAL_MOVE",
        key = vk_codes.VK_F1,
        func = function() return api.get_move_string("Local") end,
    },
    function(value, state)
        game_data.set_local_move_timer(1)

        if state then
            local move_state, move_data = game_data.get_move_data("Local")
            if move_state then
                local output = game_data.generate_frame_data_output(move_data, "Local")
                print(output)
            else
                log("[LOCAL] Unknown move: '%s'", value)
            end
        end
    end
)

event_manager.create(
    {
        name = "SLN_ON_NEW_OPPONENT_MOVE",
        key = vk_codes.VK_F2,
        func = function() return api.get_move_string("Opponent") end,
    },
    function(value, state)
        if state then
            local move_state, move_data = game_data.get_move_data("Opponent")
            if move_state then
                local output = game_data.generate_frame_data_output(move_data, "Opponent")
                print(output)
            else
                log("[OPPONENT] Unknown move: '%s'", value)
            end
        end
    end
)