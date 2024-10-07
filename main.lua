function _G.SLN_LOG(fmt, ...)
    local timestamp = os.date("[%H:%M:%S]")
    local status, msg = pcall(string.format, fmt, ...)
    
    if status then
        print(timestamp .. " " .. msg)
    else
        print(timestamp .. " [Error formatting log message]")
    end
end

local log = _G.SLN_LOG

local function add_to_package_path(folder)
    local first_path = package.path:match("([^;]+)")
    local base_dir = first_path:gsub("[\\/][^\\/]+[\\/][^\\/]+$", "")
    local new_path = base_dir .. "\\" .. folder .. "\\?.lua"

    local path_found = false
    for path in string.gmatch(package.path, "[^;]+") do
        if path == new_path then
            path_found = true
            break
        end
    end

    if not path_found then
        package.path = package.path .. ";" .. new_path
    end
end

local function add_module(modules, module_name)
    local status, result = pcall(require, module_name)
    if status then
        modules[module_name] = result
        log("Module '%s' loaded successfully.", module_name)
    else
        log("Error loading module '%s': %s", module_name, result)
    end
end

local function remove_modules(modules)
    if DetectIsKeyPressed(0x2E) then
        _G.SLN_MODULES_INITIALIZED = false
        _G.SLN_API_WRAPPER_INITIALIZED = false
        for module_name, _ in pairs(modules) do
            if package.loaded[module_name] then
                package.loaded[module_name] = nil
                modules[module_name] = nil
                log("Module '%s' unloaded.", module_name)
            end
        end
    end
end

local function handle_profiling(profile)
    if profile then
        if profile.start then
            profile.start()
        else
            log("Profiler start function not found.")
        end
    end
end

local function handle_profiling_end(profile)
    if profile then
        if profile.stop then
            profile.stop()
        else
            log("Profiler stop function not found.")
        end
        
        if _G.SLN_FRAME_COUNTER and _G.SLN_FRAME_COUNTER % 60 == 0 then
            if profile.report then
                local report = profile.report()
                log("Profiling Report (Frame %d):\n%s", _G.SLN_FRAME_COUNTER, report)
                if profile.reset then
                    profile.reset()
                    log("Profiler data reset.")
                end
            else
                log("Profiler report function not found.")
            end
        end
    end
end

local function dynamic_profiling_control(profile)
    if DetectIsKeyPressed(0x74) then
        if profile and profile.start then
            profile.start()
            log("Profiler started.")
        end
    end

    if DetectIsKeyPressed(0x75) then
        if profile and profile.stop then
            profile.stop()
            log("Profiler stopped.")
            
            if profile.report then
                local report = profile.report()
                log("Dynamic Profiling Report:\n%s", report)
            end
        end
    end
end

if not _G.SLN_MODULES_INITIALIZED then
    _G.SLN_MODULES_INITIALIZED = true

    if not _G.SLN_MODULES then
        _G.SLN_MODULES = {}
    end
    
    add_to_package_path("scripts")
    add_to_package_path("scripts\\common")
    add_to_package_path("scripts\\frame_data")
    add_to_package_path("scripts\\events")
    add_to_package_path("scripts\\logics")
    add_to_package_path("scripts\\profile")
    
    add_module(_G.SLN_MODULES, "vk_codes")
    add_module(_G.SLN_MODULES, "game_data")
    add_module(_G.SLN_MODULES, "api_wrapper")
    add_module(_G.SLN_MODULES, "common_functions")
    add_module(_G.SLN_MODULES, "event_manager")
    add_module(_G.SLN_MODULES, "input_manager")
    add_module(_G.SLN_MODULES, "combo_manager")
    add_module(_G.SLN_MODULES, "frame_delay_manager")
    add_module(_G.SLN_MODULES, "block_manager")
    add_module(_G.SLN_MODULES, "profile")
    add_module(_G.SLN_MODULES, "ini_manager")
    
    add_module(_G.SLN_MODULES, "on_new_move")
    add_module(_G.SLN_MODULES, "on_new_move_timer")
    add_module(_G.SLN_MODULES, "on_new_hit_connected")
    add_module(_G.SLN_MODULES, "on_new_is_getting_thrown")
    add_module(_G.SLN_MODULES, "on_damage_taken")

    add_module(_G.SLN_MODULES, "scorpion_frame_data")
    add_module(_G.SLN_MODULES, "subzero_frame_data")
    add_module(_G.SLN_MODULES, "reptile_frame_data")
    add_module(_G.SLN_MODULES, "smoke_frame_data")
    add_module(_G.SLN_MODULES, "limei_frame_data")
    add_module(_G.SLN_MODULES, "raiden_frame_data")
    add_module(_G.SLN_MODULES, "liukang_frame_data")
    add_module(_G.SLN_MODULES, "johnnycage_frame_data")
    add_module(_G.SLN_MODULES, "kunglao_frame_data")
    add_module(_G.SLN_MODULES, "kenshi_frame_data")
    add_module(_G.SLN_MODULES, "baraka_frame_data")
    add_module(_G.SLN_MODULES, "rainmage_frame_data")
    add_module(_G.SLN_MODULES, "reiko_frame_data")
    add_module(_G.SLN_MODULES, "ashrah_frame_data")
    add_module(_G.SLN_MODULES, "takeda_frame_data")
    add_module(_G.SLN_MODULES, "geras_frame_data")
    add_module(_G.SLN_MODULES, "nitara_frame_data")
    add_module(_G.SLN_MODULES, "kitana_frame_data")
    add_module(_G.SLN_MODULES, "mileena_frame_data")
    add_module(_G.SLN_MODULES, "tanya_frame_data")
    add_module(_G.SLN_MODULES, "shaokahn_frame_data")
    add_module(_G.SLN_MODULES, "sindel_frame_data")
    add_module(_G.SLN_MODULES, "omniman_frame_data")
    add_module(_G.SLN_MODULES, "peacemaker_frame_data")
    add_module(_G.SLN_MODULES, "quanchi_frame_data")
    add_module(_G.SLN_MODULES, "homelander_frame_data")
    add_module(_G.SLN_MODULES, "havik_frame_data")
    add_module(_G.SLN_MODULES, "shangtsung_frame_data")
    add_module(_G.SLN_MODULES, "ermac_frame_data")
    --> Sektor Missing
    --> Cyrax Missing
    --> NoobSaibot Missing

    add_module(_G.SLN_MODULES, "auto_block")
    add_module(_G.SLN_MODULES, "scorpion_sareena_combo")
    
    local profile = _G.SLN_MODULES["profile"]
    if profile then
        if profile.init then
            profile.init()
            log("Profiler initialized.")
        else
            log("Profiler init function not found.")
        end
    else
        log("Profile module not loaded.")
    end
end

remove_modules(_G.SLN_MODULES)

local api = _G.SLN_MODULES["api_wrapper"]
local event_manager = _G.SLN_MODULES["event_manager"]
local game_data = _G.SLN_MODULES["game_data"]
local auto_block = _G.SLN_MODULES["auto_block"]
local frame_delay_manager = _G.SLN_MODULES["frame_delay_manager"]
local block_manager = _G.SLN_MODULES["block_manager"]
local scorpion_sareena_combo = _G.SLN_MODULES["scorpion_sareena_combo"]
local profile = _G.SLN_MODULES["profile"]

if not _G.SLN_FRAME_COUNTER then
    _G.SLN_FRAME_COUNTER = 0
end

_G.SLN_FRAME_COUNTER = _G.SLN_FRAME_COUNTER + 1

if api then
    api.reset_cache()
end

if event_manager then
    event_manager.execute_events()
end

if game_data then
    game_data.update()
end

if frame_delay_manager then
    frame_delay_manager.update()
end

if block_manager then
    block_manager.update()
end

if auto_block then
    auto_block.execute()
end