local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local combo_manager = require("combo_manager")
local common_functions = require("common_functions")
local frame_delay_manager = require("frame_delay_manager")

local BLOCK_TYPE = {
    NONE        = 0,
    LOW         = 1,
    MID         = 2,
    HIGH        = 3,
    OVERHEAD    = 4,
    UNBLOCKABLE = 5,
    THROW       = 6
}

local HIT_STATE = {
    NONE = 0,
    HIT = 1,
    BLOCK = 2
}

local local_hit_state = 0
local local_hit_move = nil
local local_kameo_charges = 0
local local_super_charges = 0
local local_move_timer = 0
local local_is_getting_thrown = false
local local_is_getting_thrown_kameo = false
local opponent_hit_state = 0

local function get_move_data(player)
    local character_name = api.get_character_name(player)
    local move_key = api.get_move_string(player)
    local move_timer = api.get_move_timer(player)

    if not _G.SLN_MODULES[character_name:lower() .. "_frame_data"] then
        return false, {}
    end

    local frame_data = _G.SLN_MODULES[character_name:lower() .. "_frame_data"]
    local current_move = frame_data[move_key]

    if not current_move then
        return false, {}
    end

    local move = current_move.move or "N/A"
    local kommand = current_move.kommand or "N/A"
    local hit_dmg = current_move.hit_dmg or 0
    local block_dmg = current_move.block_dmg or 0
    local block_type = current_move.block_type or BLOCK_TYPE.NONE
    local startup = current_move.startup or 0
    local active = current_move.active or 0
    local recovery = current_move.recovery or 0
    local cancel = current_move.cancel or 0
    local total = startup + active + recovery
    local hit_advantage = current_move.hit_advantage or 0
    local block_advantage = current_move.block_advantage or 0
    local flawless_block_advantage = current_move.flawless_block_advantage or 0
    local multi_hit = current_move.multi_hit or false

    if move_timer <= total then
        return true, {
            move = move,
            move_string = move_key,
            kommand = kommand,
            hit_dmg = hit_dmg,
            block_dmg = block_dmg,
            block_type = block_type,
            startup = startup,
            active = active,
            recovery = recovery,
            cancel = cancel,
            total = total,
            hit_advantage = hit_advantage,
            block_advantage = block_advantage,
            flawless_block_advantage = flawless_block_advantage,
            multi_hit = multi_hit,
        }
    else
        return false, {}
    end
end

local function generate_frame_data_output(frame_data, player)
    local dist = api.get_distance()
    local current_time = os.date("%H:%M:%S")

    local function format_line(label, value)
        local line = string.format("> %-25s %s", label, value or "N/A") 
        local padding = 50 - #line 
        return line .. string.rep(" ", padding > 0 and padding or 0) .. " <\n"
    end

    local output = ">--------------------------------------------------<\n" 
    if player == "Local" then
        output = output .. string.format("> [%s] [%s]                               <\n", current_time, player)
    else
        output = output .. string.format("> [%s] [%s]                            <\n", current_time, player)
    end
    output = output .. ">--------------------------------------------------<\n"
    output = output .. format_line("String:", frame_data.move_string)
    output = output .. format_line("Move:", frame_data.move)
    output = output .. format_line("Kommand:", frame_data.kommand)
    output = output .. format_line("Distance:", string.format("%.2f", dist))
    output = output .. format_line("Startup:", frame_data.startup)
    output = output .. format_line("Active:", frame_data.active)
    output = output .. format_line("Recovery:", frame_data.recovery)
    output = output .. format_line("Cancel:", frame_data.cancel)
    output = output .. format_line("Hit Adv.:", frame_data.hit_advantage)
    output = output .. format_line("Block Adv.:", frame_data.block_advantage)
    output = output .. format_line("Block Type:", frame_data.block_type)
    output = output .. ">--------------------------------------------------<" 
    return output
end

local function get_block_time(move_data)
    local move_timer = api.get_move_timer("Opponent")
    local delay = frame_delay_manager.get()
    local block_time = (move_data.startup + move_data.active + delay) - move_timer
    return block_time >= 0 and block_time or -1
end

local function get_time_until_impact(move_data)
    local move_timer = api.get_move_timer("Opponent")
    local delay = frame_delay_manager.get()
    local time_until_impact = (move_data.startup + delay) - move_timer
    return time_until_impact >= 0 and time_until_impact or -1
end

local function set_local_move_timer(value)
    local_move_timer = value
end

local function increase_local_move_timer()
    local_move_timer = local_move_timer + 1
end

local function get_local_move_timer()
    return local_move_timer
end

local function set_local_hit_state(value)
    local_hit_state = value
end

local function get_local_hit_state()
    return local_hit_state
end

local function set_local_hit_move(value)
    local_hit_move = value
end

local function get_local_hit_move()
    return local_hit_move
end

local function get_local_kameo_charges()
    return local_kameo_charges
end

local function get_local_super_charges()
    return local_super_charges
end

local function set_opponent_hit_state(value)
    opponent_hit_state = value
end

local function get_opponent_hit_state()
    return opponent_hit_state
end

local function update_local_hit_move()
    local combo_step = combo_manager.get_combo_step()

    if local_hit_state == HIT_STATE.HIT and combo_step == 0 then
        local_hit_move = api.get_move_string("Local")
        local_kameo_charges = common_functions.get_kameo_charges("Local")
        local_super_charges = common_functions.get_super_bar("Local")
    elseif combo_step == 0 then
        local_hit_move = nil
    end

    if DetectIsKeyPressed(vk_codes.VK_M) or local_hit_state == HIT_STATE.BLOCK or opponent_hit_state == HIT_STATE.HIT then
        combo_manager.reset()
        local_hit_move = nil
        collectgarbage('collect')
    end
end

local function set_local_is_getting_thrown(value)
    local_is_getting_thrown = value
end

local function get_local_is_getting_thrown()
    return local_is_getting_thrown
end

local function set_local_is_getting_thrown_kameo(value)
    local_is_getting_thrown_kameo = value
end

local function get_local_is_getting_thrown_kameo()
    return local_is_getting_thrown_kameo
end

local function update()
    local move_state, move_data = get_move_data("Local")
    local op_move_state, op_move_data = get_move_data("Opponent")
    local opponent_hit_state = get_opponent_hit_state()
    local opponent_move_timer = api.get_move_timer("Opponent")

    if not move_state then
        set_local_hit_state(HIT_STATE.NONE)
    end

    if not op_move_state then
        set_opponent_hit_state(HIT_STATE.NONE)
    end

    if opponent_hit_state == HIT_STATE.NONE and opponent_move_timer > 50 then
        set_local_is_getting_thrown(false)
        set_local_is_getting_thrown_kameo(false)
    end

    update_local_hit_move()
end

return {
    BLOCK_TYPE = BLOCK_TYPE,
    HIT_STATE = HIT_STATE,

    set_local_move_timer = set_local_move_timer,
    get_local_move_timer = get_local_move_timer,
    increase_local_move_timer = increase_local_move_timer,
    set_local_hit_state = set_local_hit_state,
    get_local_hit_state = get_local_hit_state,
    set_local_hit_move = set_local_hit_move,
    get_local_hit_move = get_local_hit_move,
    get_local_kameo_charges = get_local_kameo_charges,
    get_local_super_charges = get_local_super_charges,
    update_local_hit_move = update_local_hit_move,
    set_opponent_hit_state = set_opponent_hit_state,
    get_opponent_hit_state = get_opponent_hit_state,
    set_local_is_getting_thrown = set_local_is_getting_thrown,
    get_local_is_getting_thrown = get_local_is_getting_thrown,
    set_local_is_getting_thrown_kameo = set_local_is_getting_thrown_kameo,
    get_local_is_getting_thrown_kameo = get_local_is_getting_thrown_kameo,

    get_move_data = get_move_data,
    generate_frame_data_output = generate_frame_data_output,
    get_block_time = get_block_time,
    get_time_until_impact = get_time_until_impact,

    update = update,
}
