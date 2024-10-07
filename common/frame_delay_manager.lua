local api = require("api_wrapper")
local vk_codes = require("vk_codes")
local ini = require("ini_manager")
local log = _G.SLN_LOG

local value = 0
local last_update = 0

local function get()
    return value
end

local function update()
    if last_update + 0.25 < os.clock() then
        local ini_data = ini.read()
        if ini_data["FrameDelaySettings"] and ini_data["FrameDelaySettings"]["framedelay"] then
            value = ini_data["FrameDelaySettings"]["framedelay"]
        end
        last_update = os.clock()
    end
end

return {
    get = get,
    update = update,
}