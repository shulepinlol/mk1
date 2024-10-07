local api = require("api_wrapper")

local function get_kameo_charges(player)
    local value = api.get_kameo_float(player)
    if value == 100 then
        return 2
    elseif value < 100 and value >= 50 then
        return 1
    else
        return 0
    end
end

local function get_super_bar(player)
    local value = api.get_super_float(player)
    if value >= 1.0 then
        return 3
    elseif value >= (2.0 / 3.0) then
        return 2 
    elseif value >= (1.0 / 3.0) then
        return 1 
    else
        return 0 
    end
end

--// Credits: class //--
local sleep = function(count)
    local initialLocalTimer = getLocalMoveTimer()
    local initialLocalMoveID = getLocalMoveString()
    local counter = 0
    while counter < count do
        local currentLocalTimer = getLocalMoveTimer()
        local currentLocalMoveID = getLocalMoveString()
        local timerChanged = (currentLocalTimer ~= initialLocalTimer)
        local idChangedWhenTimerIsOne = (currentLocalTimer == 1) and (currentLocalMoveID ~= initialLocalMoveID)
        if timerChanged or idChangedWhenTimerIsOne then
            counter = counter + 1
            initialLocalTimer = currentLocalTimer
            initialLocalMoveID = currentLocalMoveID
        end
        OwlSleep(1)
    end
end

return {
    sleep = sleep,
    get_kameo_charges = get_kameo_charges,
    get_super_bar = get_super_bar,
}