local ini_filename = "scripts\\settings.ini"

local function read()
    local ini_table = {}
    local section = nil

    for line in io.lines(ini_filename) do
        local s = line:match("^%s*%[([^%[%]]+)%]%s*$")
        if s then
            section = s
            ini_table[section] = {}
        else
            local key, value = line:match("^%s*([^=]+)%s*=%s*(.+)%s*$")
            if key and value and section then
                ini_table[section][key:match("^%s*(.-)%s*$")] = value:match("^%s*(.-)%s*$")
            end
        end
    end

    return ini_table
end

local function write(ini_table)
    local file = io.open(ini_filename, "w")
    for section, values in pairs(ini_table) do
        file:write("[" .. section .. "]\n")
        for key, value in pairs(values) do
            file:write(key .. " = " .. value .. "\n")
        end
        file:write("\n")
    end
    file:close()
end

return {
    read = read,
    write = write,
}