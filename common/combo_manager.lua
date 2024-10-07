local api = require("api_wrapper")
local input_manager = require("input_manager")
local common_functions = require("common_functions")
local frame_delay_manager = require("frame_delay_manager")
local game_data = _G.SLN_MODULES["game_data"]
local sleep = common_functions.sleep
local log = _G.SLN_LOG

local combo_step = 0
local current_combo = nil
local combo_steps = {}

local function delayed_move(fmt, ...)
    local args = {...}
    local delay = frame_delay_manager.get()

    for i, v in ipairs(args) do
        if type(v) == "number" then
            args[i] = v - delay
        end
    end

    return string.format(fmt, table.unpack(args))
end

local function execute(combo_input)
    local move_timer = api.get_move_timer("Local")
    if combo_step == 0 and current_combo ~= combo_input then
        combo_steps = {}
        current_combo = combo_input

        if type(combo_input) == "table" then
            for _, step in ipairs(combo_input) do
                local move_string, frame_delay, move_command, func = step[1], step[2], step[3], step[4]

                if type(move_command) == "table" then
                    local fmt = move_command[1]
                    local args = {table.unpack(move_command, 2)}
                    move_command = delayed_move(fmt, table.unpack(args))
                end

                table.insert(combo_steps, {
                    move_string = move_string,
                    frame_delay = frame_delay,
                    move_command = move_command,
                    func = func
                })
            end
        end
    end

    local function execute_combo_step()
        local current_step = combo_steps[combo_step + 1]
        if not current_step then
            combo_step = 0
            return
        end

        local move_string = api.get_move_string("Local")
        local move_timer = api.get_move_timer("Local")

        if game_data then
            move_timer = game_data.get_local_move_timer()
        end

        if move_string == current_step.move_string then
            if move_timer >= current_step.frame_delay then
                log("[COMBO_MANAGER] Executing '%s' | '%d'", current_step.move_command, move_timer)
                input_manager.execute(current_step.move_command)
                combo_step = combo_step + 1
                if current_step.func then
                    current_step.func()
                end
            end
        end
    end

    execute_combo_step()
end

local function set_combo_step(new_value)
    combo_step = new_value
end

local function get_combo_step()
    return combo_step
end

local function reset()
    combo_step = 0
    current_combo = nil
    combo_steps = {}
end

return {
    execute = execute,
    set_combo_step = set_combo_step,
    get_combo_step = get_combo_step,
    reset = reset,
}
