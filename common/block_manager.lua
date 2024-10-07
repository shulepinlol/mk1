local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local ini = require("ini_manager")
local log = _G.SLN_LOG

local state = true
local block_key = vk_codes.VK_SPACE
local block_mode = "Auto"
local last_update = 0

local function get()
    return state
end

local function get_block_key()
    return block_key
end

local function get_mode()
    return block_mode
end

local function update()
    if last_update + 0.25 < os.clock() then
        local ini_data = ini.read()
        if ini_data["DefenseSettings"] and ini_data["DefenseSettings"]["enabled"] then
            state = ini_data["DefenseSettings"]["enabled"] == "True"
        end
        if ini_data["DefenseSettings"] and ini_data["DefenseSettings"]["defensemode"] then
            block_mode = ini_data["DefenseSettings"]["defensemode"]
        end
        last_update = os.clock()
    end
    if last_update + 1 < os.clock() then
        local ini_data = ini.read()
        if ini_data["DefenseSettings"] and ini_data["DefenseSettings"]["mk1blockkeybind"] then
            block_key = ini_data["DefenseSettings"]["mk1blockkeybind"]
        end
    end
end

return {
    get = get,
    get_block_key = get_block_key,
    get_mode = get_mode,
    update = update,
}
