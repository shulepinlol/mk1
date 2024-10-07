local api = require("api_wrapper")
local game_data = require("game_data")
local input_manager = require("input_manager")
local combo_manager = require("combo_manager")
local frame_delay_manager = require("frame_delay_manager")

local function execute()
    local hit_move = game_data.get_local_hit_move()
    local kameo_charges = game_data.get_local_kameo_charges()
    local super_charges = game_data.get_local_super_charges()
    local delay = frame_delay_manager.get()

    if hit_move == "gAttack1" then
        if kameo_charges == 0 then
            combo_manager.execute({
                {"gAttack1", 5, "2"},
                {"gAttack1_2", 5, "BF1"},
                {"gSpearThrow", 85 - delay, "F+3"},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 43 - delay, "4"},
                {"gAttack4", 15 - delay, "BF2"}
            })
        else
            combo_manager.execute({
                {"gAttack1", 5, "2"},
                {"gAttack1_2", 5, "BF1"},
                {"gSpearThrow", 85 - delay, "3"},
                {"gAttack3", 5, {"3,B+K,{%d},F[%d],F+3", 105, 40}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 43 - delay, "4"},
                {"gAttack4", 15 - delay, "BF2"}
            })
        end
    end

    if hit_move == "gAttack2" then
        if kameo_charges == 2 and super_charges > 0 then
            combo_manager.execute({
                {"gAttack2", 5, {"1,B+K,{%d},F[%d],4", 105, 40}},
                {"gAttack4", 5, {"B+K,{%d},F[%d],F+3", 105, 25}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 40, "U+F,1"},
                {"gAttack1JumpForward", 5, "2"},
                {"gAttack1JumpForward_2", 15 - delay, "DB2+EX"},
                {"gHookAirCloseEX", 80, "3"},
                {"gAttack3JumpForward", 5, "BF1"},
                {"gSpearThrow", 75 - delay, "3"},
                {"gAttack3", 5, "3"},
                {"gAttack3_3", 15 - delay, "DB2"},
            })
        end
    end

    if hit_move == "gAttack3Towards" then
        if kameo_charges == 0 then
            combo_manager.execute({
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 43 - delay, "4"},
                {"gAttack4", 5, "BF1"},
                {"gSpearThrow", 85 - delay, "F+3"},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 43 - delay, "4"},
                {"gAttack4", 15 - delay, "BF2"}
            })
        elseif kameo_charges == 1 then
            combo_manager.execute({
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 43 - delay, "4"},
                {"gAttack4", 5, "BF1"},
                {"gSpearThrow", 85 - delay, "4"},
                {"gAttack4", 5, {"B+K,{%d},FF,{%d},3", 105, 15}},
                {"gAttack3", 5, "3"},
                {"gAttack3_3", 15 - delay, "DB2"}
            })
        elseif kameo_charges == 2 then
            combo_manager.execute({
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 0, {"F[%d],F+3", 57}},
                {"gAttack3Towards", 5, "2"},
                {"gAttack3Towards_2", 43 - delay, "4"},
                {"gAttack4", 5, "BF1"},
                {"gSpearThrow", 85 - delay, "4"},
                {"gAttack4", 10, {"B+K,{%d},F[%d],4,{%d},B+K,{%d},FF,{%d},3", 105, 25, 10, 105, 15}},
                {"gAttack3", 5, "3"},
                {"gAttack3_3", 15 - delay, "DB2"}
            })
        end
    end
end

return {
    execute = execute,
}