local cache = {}

local function reset_cache()
    cache = {}
end

local function make_api_player_wrapper_func(base_name)
    return function(player)
        local func_name = "get" .. player .. base_name
        if cache[func_name] == nil then
            local func = _G[func_name]
            if func then
                cache[func_name] = func()
            else
                error("Function not found: " .. func_name)
            end
        end
        return cache[func_name]
    end
end

local function make_api_wrapper_func(func_name)
    return function(...)
        local func = _G[func_name]
        if func then
            return func(...)
        else
            error("Function not found: " .. func_name)
        end
    end
end

return {
    get_is_attacking = make_api_player_wrapper_func("IsAttacking"),
    get_is_getting_thrown = make_api_player_wrapper_func("IsGettingThrown"),
    get_is_getting_thrown_kameo = make_api_player_wrapper_func("IsGettingThrownKameo"),
    get_character_hash = make_api_player_wrapper_func("CharacterHash"),
    get_move_startup_frame = make_api_player_wrapper_func("MoveStartupFrame"),
    get_move_active_frame = make_api_player_wrapper_func("MoveActiveFrame"),
    get_move_recovery_frame = make_api_player_wrapper_func("MoveRecoveryFrame"),
    get_move_attack_type = make_api_player_wrapper_func("MoveAttackType"),
    get_move_timer = make_api_player_wrapper_func("MoveTimer"),
    get_move_string = make_api_player_wrapper_func("MoveString"),
    get_is_in_air = make_api_player_wrapper_func("IsInAir"),
    get_attacking_int = make_api_player_wrapper_func("AttackingInt"),
    get_is_not_in_fatality_mode = make_api_player_wrapper_func("IsNotInFatalityMode"),
    get_health_float = make_api_player_wrapper_func("HealthFloat"),
    get_character_name = make_api_player_wrapper_func("CharacterName"),
    get_hit_connected = make_api_player_wrapper_func("HitConnected"),
    get_super_float = make_api_player_wrapper_func("SuperFloat"),
    get_kameo_float = make_api_player_wrapper_func("KameoFloat"),

    press_input_up_button = make_api_wrapper_func("PressInputUpButton"),
    press_input_down_button = make_api_wrapper_func("PressInputDownButton"),
    press_input_left_button = make_api_wrapper_func("PressInputLeftButton"),
    press_input_right_button = make_api_wrapper_func("PressInputRightButton"),
    press_input_front_punch = make_api_wrapper_func("PressInputFrontPunch"),
    press_input_front_kick = make_api_wrapper_func("PressInputFrontKick"),
    press_input_back_punch = make_api_wrapper_func("PressInputBackPunch"),
    press_input_back_kick = make_api_wrapper_func("PressInputBackKick"),
    press_input_throw_button = make_api_wrapper_func("PressInputThrowButton"),
    press_input_block_button = make_api_wrapper_func("PressInputBlockButton"),
    press_input_kameo_button = make_api_wrapper_func("PressInputKameoButton"),
    press_input_flip_stance_button = make_api_wrapper_func("PressInputFlipStanceButton"),

    release_input_up_button = make_api_wrapper_func("ReleaseInputUpButton"),
    release_input_down_button = make_api_wrapper_func("ReleaseInputDownButton"),
    release_input_left_button = make_api_wrapper_func("ReleaseInputLeftButton"),
    release_input_right_button = make_api_wrapper_func("ReleaseInputRightButton"),
    release_input_front_punch = make_api_wrapper_func("ReleaseInputFrontPunch"),
    release_input_front_kick = make_api_wrapper_func("ReleaseInputFrontKick"),
    release_input_back_punch = make_api_wrapper_func("ReleaseInputBackPunch"),
    release_input_back_kick = make_api_wrapper_func("ReleaseInputBackKick"),
    release_input_throw_button = make_api_wrapper_func("ReleaseInputThrowButton"),
    release_input_block_button = make_api_wrapper_func("ReleaseInputBlockButton"),
    release_input_kameo_button = make_api_wrapper_func("ReleaseInputKameoButton"),
    release_input_flip_stance_button = make_api_wrapper_func("ReleaseInputFlipStanceButton"),

    get_distance = make_api_wrapper_func("getLocalDistanceFromOpponent"),
    enable_auto_blocking_state = make_api_wrapper_func("EnableAutoBlockingState"),
    disable_auto_blocking_state = make_api_wrapper_func("DisableAutoBlockingState"),
    get_auto_blocking_state = make_api_wrapper_func("GetAutoBlockingState"),
    detect_is_key_pressed = make_api_wrapper_func("DetectIsKeyPressed"),
    owl_sleep = make_api_wrapper_func("OwlSleep"),
    enable_game_input = make_api_wrapper_func("EnableGameInput"),
    disable_game_input = make_api_wrapper_func("DisableGameInput"),

    reset_cache = reset_cache,
}
