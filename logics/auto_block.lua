local game_data = require("game_data")
local input_manager = require("input_manager")
local api = require("api_wrapper")
local block_manager = require("block_manager")
local vk_codes = require("vk_codes")
local BLOCK_TYPE = game_data.BLOCK_TYPE
local HIT_STATE = game_data.HIT_STATE

local function execute()
    if not block_manager.get() then
        input_manager.release("BLK")
        api.enable_game_input()
        return 
    end

    local block_key_state = api.detect_is_key_pressed(block_manager.get_block_key())
    local press_block_key_condition = block_manager.get_mode() ~= "Auto" and not block_key_state

    local press_block_key = function()
        if not press_block_key_condition then
            input_manager.press("BLK")
        end
    end

    if press_block_key_condition then
        input_manager.release("BLK")
        input_manager.release_all_dir_inputs()
        api.enable_game_input()
        return
    end

    local move_state, move_data = game_data.get_move_data("Local")
    local op_move_state, op_move_data = game_data.get_move_data("Opponent")
    local local_hit_state = game_data.get_local_hit_state()
    local opponent_hit_state = game_data.get_opponent_hit_state()
    local block_type = op_move_data and op_move_data.block_type or BLOCK_TYPE.NONE

    local block_time = -1
    if op_move_state then
        block_time = game_data.get_block_time(op_move_data)
    end

    local time_until_impact = -1
    if op_move_state then
        time_until_impact = game_data.get_time_until_impact(op_move_data)
    end

    local block_condition = (not move_state or op_move_data.kommand == "SS+EX") and 
                            op_move_state and 
                            block_time >= 0 and 
                            time_until_impact <= 10 and
                            local_hit_state ~= HIT_STATE.HIT and 
                            opponent_hit_state ~= HIT_STATE.HIT and
                            block_type ~= BLOCK_TYPE.NONE and
                            block_type ~= BLOCK_TYPE.UNBLOCKABLE

    if block_type == BLOCK_TYPE.THROW and opponent_hit_state == HIT_STATE.HIT then
        local is_neutral_throw = game_data.get_local_is_getting_thrown()
        local is_forward_throw = game_data.get_local_is_getting_thrown_kameo()
        if is_neutral_throw then
            input_manager.execute("1,{2}")
        end
        if is_forward_throw then
            input_manager.execute("2,{2}")
        end
    end

    if block_condition then
        api.disable_game_input()
        if block_type == BLOCK_TYPE.THROW then
            input_manager.press("D")
        elseif block_type == BLOCK_TYPE.OVERHEAD then
            press_block_key()
            input_manager.press("U")
        elseif block_type == BLOCK_TYPE.LOW then
            press_block_key()
            input_manager.press("D")
        else
            press_block_key()
        end
    else
        api.enable_game_input()
        local move_timer = api.get_move_timer("Opponent")
        local cancel = op_move_data.cancel or 0
        if cancel - move_timer < 0 then
            input_manager.release_all_dir_inputs()
            if not block_key_state then
                input_manager.release("BLK")
            end
        end
    end
end

return {
    execute = execute,
}
