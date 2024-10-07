local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local log = _G.SLN_LOG

local events = {}
local states = {}

local function handle_keybind(event)
    local is_key_pressed = api.detect_is_key_pressed(event.key)
    local key_state_var = event.name .. "_KEY_STATE"
    local state_var = event.name .. "_STATE"

    if states[key_state_var] == nil then states[key_state_var] = false end
    if states[state_var] == nil then states[state_var] = false end

    local key_state = states[key_state_var]
    local state = states[state_var]

    if is_key_pressed and not key_state then
        states[key_state_var] = true
        states[state_var] = not state
        if event.console_msg then
            log(event.console_msg)
        else
            log(event.name .. " toggled to " .. tostring(states[state_var]))
        end
    elseif not is_key_pressed and key_state then
        states[key_state_var] = false
    end
end

local function create(event, action)
    if states[event.name] == nil then
        states[event.name] = event.func()
    end
    if states[event.name .. "_STATE"] == nil then
        states[event.name .. "_STATE"] = false
    end
    if states[event.name .. "_KEY_STATE"] == nil then
        states[event.name .. "_KEY_STATE"] = false
    end

    local event_func = function()
        if event.key then
            handle_keybind(event)
        end

        local current_value = event.func()
        local previous_value = states[event.name]
        local event_state = states[event.name .. "_STATE"]

        if current_value ~= previous_value then
            action(current_value, event_state)
            states[event.name] = current_value
        end
    end

    table.insert(events, event_func)
end

local function execute_events()
    for _, event in ipairs(events) do
        event()
    end
end

return {
    create = create,
    execute_events = execute_events,
}
