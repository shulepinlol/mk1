local api = require("api_wrapper")
local common_functions = require("common_functions")
local sleep = common_functions.sleep
local log = _G.SLN_LOG

local input = {
    press_up = 1,
    release_up = 2,
    press_back = 3,
    release_back = 4,
    press_forward = 5,
    release_forward = 6,
    press_down = 7,
    release_down = 8,
    press_1 = 9,
    release_1 = 10,
    press_2 = 11,
    release_2 = 12,
    press_3 = 13,
    release_3 = 14,
    press_4 = 15,
    release_4 = 16,
    press_block = 17,
    release_block = 18,
    press_kameo = 19,
    release_kameo = 20,
    press_ss = 21,
    release_ss = 22,
}

local commands = {
    [input.press_up] = function() api.press_input_up_button() end,
    [input.release_up] = function() api.release_input_up_button() end,
    [input.press_back] = function() api.press_input_left_button() end,
    [input.release_back] = function() api.release_input_left_button() end,
    [input.press_forward] = function() api.press_input_right_button() end,
    [input.release_forward] = function() api.release_input_right_button() end,
    [input.press_down] = function() api.press_input_down_button() end,
    [input.release_down] = function() api.release_input_down_button() end,
    [input.press_1] = function() api.press_input_front_punch() end,
    [input.release_1] = function() api.release_input_front_punch() end,
    [input.press_2] = function() api.press_input_back_punch() end,
    [input.release_2] = function() api.release_input_back_punch() end,
    [input.press_3] = function() api.press_input_front_kick() end,
    [input.release_3] = function() api.release_input_front_kick() end,
    [input.press_4] = function() api.press_input_back_kick() end,
    [input.release_4] = function() api.release_input_back_kick() end,
    [input.press_block] = function() api.press_input_block_button() end,
    [input.release_block] = function() api.release_input_block_button() end,
    [input.press_kameo] = function() api.press_input_kameo_button() end,
    [input.release_kameo] = function() api.release_input_kameo_button() end,
    [input.press_ss] = function() api.press_input_flip_stance_button() end,
    [input.release_ss] = function() api.release_input_flip_stance_button() end,
}

local valid_inputs = {
    "FF", "BB", "BLK", "EX", "SS", "K", "U", "D", "B", "F", "1", "2", "3", "4"
}

local function match_input(s, pos)
    for _, input_str in ipairs(valid_inputs) do
        if s:sub(pos, pos + #input_str - 1) == input_str then
            return input_str, #input_str
        end
    end
    return nil, nil
end

local function parse_action_string(action)
    local steps = {}
    local i = 1
    local n = #action

    while i <= n do
        while i <= n and action:sub(i, i):match("%s") do
            i = i + 1
        end

        if i > n then
            break
        end

        if action:sub(i, i) == '{' then
            local j = i + 1
            local delay_str = ''
            while j <= n and action:sub(j, j) ~= '}' do
                delay_str = delay_str .. action:sub(j, j)
                j = j + 1
            end
            if j > n or action:sub(j, j) ~= '}' then
                error('Expected } after { at position ' .. i)
            end
            local delay = tonumber(delay_str)
            if not delay then
                error('Invalid delay value at position ' .. i)
            end
            table.insert(steps, {type = 'wait', duration = delay})
            i = j + 1
        else
            local input_str, input_len = match_input(action, i)
            if input_str then
                i = i + input_len
                local inputs_to_press = {input_str}

                while i <= n and action:sub(i, i) == '+' do
                    i = i + 1
                    while i <= n and action:sub(i, i):match("%s") do
                        i = i + 1
                    end
                    if i <= n then
                        local next_input, next_input_len = match_input(action, i)
                        if next_input then
                            table.insert(inputs_to_press, next_input)
                            i = i + next_input_len
                        else
                            error('Expected input after + at position ' .. i)
                        end
                    else
                        error('Expected input after + at position ' .. i)
                    end
                end

                local hold_duration = 4

                while i <= n and action:sub(i, i):match("%s") do
                    i = i + 1
                end

                if i <= n and action:sub(i, i) == '[' then
                    i = i + 1
                    local duration_str = ''
                    while i <= n and action:sub(i, i):match('%d') do
                        duration_str = duration_str .. action:sub(i, i)
                        i = i + 1
                    end
                    if i > n or action:sub(i, i) ~= ']' then
                        error('Expected ] after [ at position ' .. i)
                    end
                    i = i + 1
                    hold_duration = tonumber(duration_str)
                    if not hold_duration then
                        error('Invalid hold duration at position ' .. (i - #duration_str - 1))
                    end
                end

                if input_str == "FF" then
                    table.insert(steps, {type = 'press', inputs = {"F"}})
                    table.insert(steps, {type = 'wait', duration = 2})
                    table.insert(steps, {type = 'release', inputs = {"F"}})
                    table.insert(steps, {type = 'wait', duration = 4})
                    table.insert(steps, {type = 'press', inputs = {"F"}})
                    table.insert(steps, {type = 'wait', duration = 2})
                    table.insert(steps, {type = 'release', inputs = {"F"}})
                elseif input_str == "BB" then
                    table.insert(steps, {type = 'press', inputs = {"B"}})
                    table.insert(steps, {type = 'wait', duration = 2})
                    table.insert(steps, {type = 'release', inputs = {"B"}})
                    table.insert(steps, {type = 'wait', duration = 2})
                    table.insert(steps, {type = 'press', inputs = {"B"}})
                    table.insert(steps, {type = 'wait', duration = 2})
                    table.insert(steps, {type = 'release', inputs = {"B"}})
                else
                    table.insert(steps, {type = 'press', inputs = inputs_to_press})
                    table.insert(steps, {type = 'wait', duration = hold_duration})
                    table.insert(steps, {type = 'release', inputs = inputs_to_press})
                end
            else
                i = i + 1
            end
        end
    end

    return steps
end

local function press(input_str)
    if input_str == "U" then
        commands[input.press_up]()
    elseif input_str == "D" then
        commands[input.press_down]()
    elseif input_str == "B" then
        commands[input.press_back]()
    elseif input_str == "F" then
        commands[input.press_forward]()
    elseif input_str == "1" then
        commands[input.press_1]()
    elseif input_str == "2" then
        commands[input.press_2]()
    elseif input_str == "3" then
        commands[input.press_3]()
    elseif input_str == "4" then
        commands[input.press_4]()
    elseif input_str == "BLK" or input_str == "EX" then
        commands[input.press_block]()
    elseif input_str == "K" then
        commands[input.press_kameo]()
    elseif input_str == "SS" then
        commands[input.press_ss]()
    end
end

local function release(input_str)
    if input_str == "U" then
        commands[input.release_up]()
    elseif input_str == "D" then
        commands[input.release_down]()
    elseif input_str == "B" then
        commands[input.release_back]()
    elseif input_str == "F" then
        commands[input.release_forward]()
    elseif input_str == "1" then
        commands[input.release_1]()
    elseif input_str == "2" then
        commands[input.release_2]()
    elseif input_str == "3" then
        commands[input.release_3]()
    elseif input_str == "4" then
        commands[input.release_4]()
    elseif input_str == "BLK" or input_str == "EX" then
        commands[input.release_block]()
    elseif input_str == "K" then
        commands[input.release_kameo]()
    elseif input_str == "SS" then
        commands[input.release_ss]()
    end
end

local function execute(action)
    local steps = parse_action_string(action)

    for _, step in ipairs(steps) do
        if step.type == 'press' then
            for _, input_str in ipairs(step.inputs) do
                press(input_str)
            end
        elseif step.type == 'release' then
            for _, input_str in ipairs(step.inputs) do
                release(input_str)
            end
        elseif step.type == 'wait' then
            sleep(step.duration)
        end
    end
end

local function release_all_dir_inputs()
    for k, v in pairs({ "D", "F", "U", "B" }) do
        release(v)
    end
end

return {
    press = press,
    release = release,
    execute = execute,
    release_all_dir_inputs = release_all_dir_inputs
}
