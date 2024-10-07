local game_data = require("game_data")
local BLOCK_TYPE = game_data.BLOCK_TYPE

return {
    ["gAttack1"] = {
        move = "Sheath Slap",
        kommand = "1",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 7,
        active = 3,
        recovery = 19,
        cancel = 18,
        hit_advantage = 15,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gAttack1_4"] = {
        move = "See No Evil",
        kommand = "1,4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 13,
        active = 2,
        recovery = 36,
        cancel = 22,
        hit_advantage = -7,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack1_4_1"] = {
        move = "Blind Sided",
        kommand = "1,4,1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 19,
        active = 4,
        recovery = 45,
        cancel = 34,
        hit_advantage = 14,
        block_advantage = -17,
        flawless_block_advantage = -17,
    },
    ["gAttack1Down"] = {
        move = "Belly Buster",
        kommand = "D+1",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 2,
        recovery = 23,
        cancel = 18,
        hit_advantage = 12,
        block_advantage = -8,
        flawless_block_advantage = -8,
    },
    ["gAttack2"] = {
        move = "Silent Palm",
        kommand = "2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 8,
        active = 3,
        recovery = 17,
        cancel = 18,
        hit_advantage = 4,
        block_advantage = 2,
        flawless_block_advantage = 2,
    },
    ["gAttack2_1"] = {
        move = "Gut Check",
        kommand = "2,1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 3,
        recovery = 32,
        cancel = 17,
        hit_advantage = 6,
        block_advantage = -3,
        flawless_block_advantage = -3,
    },
    ["gAttack2_1_2"] = {
        move = "Tamahag-Pain",
        kommand = "2,1,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 19,
        active = 10,
        recovery = 32,
        cancel = 0,
        hit_advantage = 25,
        block_advantage = -3,
        flawless_block_advantage = -3,
    },
    ["gAttack2Away"] = {
        move = "Spirit Strike",
        kommand = "B+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 12,
        active = 4,
        recovery = 32,
        cancel = 23,
        hit_advantage = 12,
        block_advantage = -4,
        flawless_block_advantage = -4,
    },
    ["gAttack2Away_2"] = {
        move = "Silencing Souls",
        kommand = "B+2,2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 28,
        active = 2,
        recovery = 48,
        cancel = 0,
        hit_advantage = 18,
        block_advantage = -8,
        flawless_block_advantage = -18,
    },
    ["gAttack2Towards"] = {
        move = "Dark Ritual",
        kommand = "F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 3,
        recovery = 25,
        cancel = 26,
        hit_advantage = 16,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack2Towards_2"] = {
        move = "Slice N' Dice",
        kommand = "F+2,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 16,
        active = 2,
        recovery = 37,
        cancel = 28,
        hit_advantage = 2,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack2Towards_2_2Away"] = {
        move = "Pinned",
        kommand = "F+2,2,B+2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 32,
        active = 4,
        recovery = 46,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -8,
        flawless_block_advantage = -18,
    },
    ["gAttack2Towards_2_2Towards"] = {
        move = "Spirit Away",
        kommand = "F+2,2,F+2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 15,
        active = 9,
        recovery = 43,
        cancel = 0,
        hit_advantage = 18,
        block_advantage = -10,
        flawless_block_advantage = -20,
    },
    ["gAttack2Towards_2_2Down"] = {
        move = "Deep Stab",
        kommand = "F+2,2,D+2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 32,
        active = 4,
        recovery = 46,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -8,
        flawless_block_advantage = -18,
    },
    ["gAttack2Down"] = {
        move = "Rising Fist",
        kommand = "D+2",
        hit_dmg = 140.00,
        block_dmg = 21.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 11,
        active = 4,
        recovery = 42,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -4,
        flawless_block_advantage = -14,
    },
    ["gAttack3"] = {
        move = "High Kick",
        kommand = "3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 11,
        active = 3,
        recovery = 31,
        cancel = 22,
        hit_advantage = 0,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAttack3Down"] = {
        move = "Sneaky Sneaker",
        kommand = "D+3",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.LOW,
        startup = 9,
        active = 2,
        recovery = 23,
        cancel = 23,
        hit_advantage = 13,
        block_advantage = -8,
        flawless_block_advantage = -8,
    },
    ["gAttack4"] = {
        move = "Face Breaker",
        kommand = "4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 10,
        active = 3,
        recovery = 28,
        cancel = 17,
        hit_advantage = 8,
        block_advantage = 1,
        flawless_block_advantage = 1,
    },
    ["gAttack4_4"] = {
        move = "Heighten Senses",
        kommand = "4,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 22,
        active = 4,
        recovery = 35,
        cancel = 0,
        hit_advantage = 16,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack4Away"] = {
        move = "Achilles Cutter",
        kommand = "B+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 13,
        active = 3,
        recovery = 35,
        cancel = 0,
        hit_advantage = 8,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack4Down"] = {
        move = "Sweeping Heel",
        kommand = "D+4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 12,
        active = 2,
        recovery = 27,
        cancel = 26,
        hit_advantage = 14,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAltAttack1"] = {
        move = "Brutal Bow",
        kommand = "1",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 7,
        active = 3,
        recovery = 18,
        cancel = 0,
        hit_advantage = 3,
        block_advantage = 1,
        flawless_block_advantage = 1,
    },
    ["gAltAttack1_2"] = {
        move = "Off Balance",
        kommand = "1,2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 2,
        recovery = 32,
        cancel = 0,
        hit_advantage = -4,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAltAttack1_2_2"] = {
        move = "Blind Justice",
        kommand = "1,2,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 17,
        active = 3,
        recovery = 34,
        cancel = 0,
        hit_advantage = 9,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAltAttack1Away"] = {
        move = "Five Rings Slash",
        kommand = "B+1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 13,
        active = 2,
        recovery = 25,
        cancel = 0,
        hit_advantage = 10,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAltAttack1Away_2"] = {
        move = "Transcending Cut",
        kommand = "B+1,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 17,
        active = 3,
        recovery = 31,
        cancel = 0,
        hit_advantage = 44,
        block_advantage = -12,
        flawless_block_advantage = -12,
    },
    ["gAltAttack2"] = {
        move = "Quick Laceration",
        kommand = "2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 11,
        active = 2,
        recovery = 27,
        cancel = 0,
        hit_advantage = 8,
        block_advantage = 3,
        flawless_block_advantage = 3,
    },
    ["gAltAttack2_1"] = {
        move = "Don't Blink",
        kommand = "2,1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.MID,
        startup = 18,
        active = 3,
        recovery = 28,
        cancel = 0,
        hit_advantage = 18,
        block_advantage = 1,
        flawless_block_advantage = 1,
    },
    ["gAltAttack2Away"] = {
        move = "Impaler",
        kommand = "B+2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 3,
        recovery = 42,
        cancel = 0,
        hit_advantage = 37,
        block_advantage = -13,
        flawless_block_advantage = -13,
    },
    ["gAltAttack2Towards"] = {
        move = "Upper Slice",
        kommand = "F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 4,
        recovery = 25,
        cancel = 0,
        hit_advantage = 1,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAltAttack2Towards_2"] = {
        move = "Fading Light",
        kommand = "F+2,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 18,
        active = 3,
        recovery = 23,
        cancel = 0,
        hit_advantage = 7,
        block_advantage = -4,
        flawless_block_advantage = -4,
    },
    ["gAltAttack2Towards_2_1"] = {
        move = "Lost Way",
        kommand = "F+2,2,1",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 21,
        active = 3,
        recovery = 34,
        cancel = 0,
        hit_advantage = 32,
        block_advantage = -15,
        flawless_block_advantage = -15,
    },
    ["gAltAttack2Down"] = {
        move = "Rising Blade",
        kommand = "D+2",
        hit_dmg = 140.00,
        block_dmg = 21.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 9,
        active = 4,
        recovery = 40,
        cancel = 0,
        hit_advantage = 25,
        block_advantage = -2,
        flawless_block_advantage = -12,
    },
    ["gAltAttack3"] = {
        move = "Hammering Heel",
        kommand = "3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 11,
        active = 3,
        recovery = 31,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAltAttack3Towards"] = {
        move = "Tibia Tapper",
        kommand = "F+3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 22,
        active = 3,
        recovery = 34,
        cancel = 0,
        hit_advantage = 4,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAltAttack3Towards_2"] = {
        move = "Bad Feeling",
        kommand = "F+3,2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 30,
        active = 3,
        recovery = 33,
        cancel = 0,
        hit_advantage = 24,
        block_advantage = -4,
        flawless_block_advantage = -4,
    },
    ["gAltAttack3Down"] = {
        move = "Gutted",
        kommand = "D+3",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.LOW,
        startup = 9,
        active = 2,
        recovery = 23,
        cancel = 0,
        hit_advantage = 13,
        block_advantage = -8,
        flawless_block_advantage = -8,
    },
    ["gAltAttack4"] = {
        move = "Chest Cracker",
        kommand = "4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 12,
        active = 2,
        recovery = 25,
        cancel = 0,
        hit_advantage = 6,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAltAttack4_2"] = {
        move = "Down The Middle",
        kommand = "4,2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 18,
        active = 3,
        recovery = 33,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -4,
        flawless_block_advantage = -4,
    },
    ["gAltAttack4_2_1"] = {
        move = "Get Back",
        kommand = "4,2,1",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 27,
        active = 2,
        recovery = 30,
        cancel = 0,
        hit_advantage = 40,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gAltAttack4Away"] = {
        move = "Cut Down",
        kommand = "B+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 15,
        active = 3,
        recovery = 34,
        cancel = 0,
        hit_advantage = 10,
        block_advantage = -4,
        flawless_block_advantage = -4,
    },
    ["gAltAttack4Towards"] = {
        move = "Double Tab",
        kommand = "F+4",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 13,
        active = 18,
        recovery = 28,
        cancel = 0,
        hit_advantage = 19,
        block_advantage = 1,
        flawless_block_advantage = 1,
        multi_hit = true,
    },
    ["gAltAttack4Down"] = {
        move = "Painful Poke",
        kommand = "D+4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 9,
        active = 3,
        recovery = 29,
        cancel = 0,
        hit_advantage = 11,
        block_advantage = -10,
        flawless_block_advantage = -10,
    },
    ["gAttack1JumpUp"] = {
        move = "Quick Swipe",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 3,
        recovery = 38,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpForward"] = {
        move = "Quick Swipe",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 3,
        recovery = 38,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpBackward"] = {
        move = "Quick Swipe",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 3,
        recovery = 38,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpUp_2"] = {
        move = "Bleeding",
        kommand = "U+F+1,2",
        hit_dmg = 27.00,
        block_dmg = 4.050,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 5,
        recovery = 35,
        cancel = 46,
        hit_advantage = 18,
        block_advantage = -26,
        flawless_block_advantage = -26,
    },
    ["gAttack1JumpForward_2"] = {
        move = "Bleeding",
        kommand = "U+F+1,2",
        hit_dmg = 27.00,
        block_dmg = 4.050,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 5,
        recovery = 35,
        cancel = 46,
        hit_advantage = 18,
        block_advantage = -26,
        flawless_block_advantage = -26,
    },
    ["gAttack1JumpBackward_2"] = {
        move = "Bleeding",
        kommand = "U+F+1,2",
        hit_dmg = 27.00,
        block_dmg = 4.050,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 5,
        recovery = 35,
        cancel = 46,
        hit_advantage = 18,
        block_advantage = -26,
        flawless_block_advantage = -26,
    },
    ["gAttack1JumpUp_2_2"] = {
        move = "Spirit Spike",
        kommand = "U+F+1,2,2",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 6,
        recovery = 35,
        cancel = 0,
        hit_advantage = 27,
        block_advantage = -27,
        flawless_block_advantage = -27,
    },
    ["gAttack1JumpForward_2_2"] = {
        move = "Spirit Spike",
        kommand = "U+F+1,2,2",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 6,
        recovery = 35,
        cancel = 0,
        hit_advantage = 27,
        block_advantage = -27,
        flawless_block_advantage = -27,
    },
    ["gAttack1JumpBackward_2_2"] = {
        move = "Spirit Spike",
        kommand = "U+F+1,2,2",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 6,
        recovery = 35,
        cancel = 0,
        hit_advantage = 27,
        block_advantage = -27,
        flawless_block_advantage = -27,
    },
    ["gAttack2JumpUp"] = {
        move = "Hilting Flower",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 3,
        recovery = 38,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpForward"] = {
        move = "Hilting Flower",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 3,
        recovery = 38,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpBackward"] = {
        move = "Hilting Flower",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 3,
        recovery = 38,
        cancel = 0,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpUp_2"] = {
        move = "Blooming Blade",
        kommand = "U+F+2,2",
        hit_dmg = 27.00,
        block_dmg = 4.050,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 11,
        active = 4,
        recovery = 32,
        cancel = 40,
        hit_advantage = 22,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gAttack2JumpForward_2"] = {
        move = "Blooming Blade",
        kommand = "U+F+2,2",
        hit_dmg = 27.00,
        block_dmg = 4.050,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 11,
        active = 4,
        recovery = 32,
        cancel = 40,
        hit_advantage = 22,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gAttack2JumpBackward_2"] = {
        move = "Blooming Blade",
        kommand = "U+F+2,2",
        hit_dmg = 27.00,
        block_dmg = 4.050,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 11,
        active = 4,
        recovery = 32,
        cancel = 40,
        hit_advantage = 22,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gAttack2JumpUp_2_4"] = {
        move = "Booted",
        kommand = "U+F+2,2,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 2,
        recovery = 34,
        cancel = 43,
        hit_advantage = 45,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gAttack2JumpForward_2_4"] = {
        move = "Booted",
        kommand = "U+F+2,2,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 2,
        recovery = 34,
        cancel = 43,
        hit_advantage = 45,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gAttack2JumpBackward_2_4"] = {
        move = "Booted",
        kommand = "U+F+2,2,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 2,
        recovery = 34,
        cancel = 43,
        hit_advantage = 45,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gAttack3JumpUp"] = {
        move = "Flying Boot",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 6,
        recovery = 38,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpForward"] = {
        move = "Flying Boot",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 6,
        recovery = 38,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpBackward"] = {
        move = "Flying Boot",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 6,
        recovery = 38,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpUp"] = {
        move = "Flying Boot",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 6,
        recovery = 38,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpForward"] = {
        move = "Flying Boot",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 6,
        recovery = 38,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpBackward"] = {
        move = "Flying Boot",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 6,
        recovery = 38,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpUp_4"] = {
        move = "Split Kick",
        kommand = "U+F+3,4",
        hit_dmg = 25.50,
        block_dmg = 3.820,
        block_type = BLOCK_TYPE.MID,
        startup = 12,
        active = 2,
        recovery = 30,
        cancel = 37,
        hit_advantage = 27,
        block_advantage = -18,
        flawless_block_advantage = -18,
    },
    ["gAttack3JumpForward_4"] = {
        move = "Split Kick",
        kommand = "U+F+3,4",
        hit_dmg = 25.50,
        block_dmg = 3.820,
        block_type = BLOCK_TYPE.MID,
        startup = 12,
        active = 2,
        recovery = 30,
        cancel = 37,
        hit_advantage = 27,
        block_advantage = -18,
        flawless_block_advantage = -18,
    },
    ["gAttack3JumpBackward_4"] = {
        move = "Split Kick",
        kommand = "U+F+3,4",
        hit_dmg = 25.50,
        block_dmg = 3.820,
        block_type = BLOCK_TYPE.MID,
        startup = 12,
        active = 2,
        recovery = 30,
        cancel = 37,
        hit_advantage = 27,
        block_advantage = -18,
        flawless_block_advantage = -18,
    },
    ["gAttack3JumpUp_4_3"] = {
        move = "Spinning Finish",
        kommand = "U+F+3,4,3",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 4,
        recovery = 35,
        cancel = 0,
        hit_advantage = 11,
        block_advantage = -25,
        flawless_block_advantage = -25,
    },
    ["gAttack3JumpForward_4_3"] = {
        move = "Spinning Finish",
        kommand = "U+F+3,4,3",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 4,
        recovery = 35,
        cancel = 0,
        hit_advantage = 11,
        block_advantage = -25,
        flawless_block_advantage = -25,
    },
    ["gAttack3JumpBackward_4_3"] = {
        move = "Spinning Finish",
        kommand = "U+F+3,4,3",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 4,
        recovery = 35,
        cancel = 0,
        hit_advantage = 11,
        block_advantage = -25,
        flawless_block_advantage = -25,
    },
    ["gAttackThrow"] = {
        move = "Shove",
        kommand = "F+THROW or F+1+3",
        hit_dmg = 20.00,
        block_dmg = 0,
        block_type = BLOCK_TYPE.THROW,
        startup = 10,
        active = 2,
        recovery = 33,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gDeflectingRush"] = {
        move = "Ancestral Guard",
        kommand = "DF1",
        hit_dmg = 70.00,
        block_dmg = 18.750,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 87,
        recovery = 32,
        cancel = 0,
        hit_advantage = 33,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gDeflectingRushEX"] = {
        move = "Extend Ancestral Guard",
        kommand = "Hold 1",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 0,
        active = 0,
        recovery = 0,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
        no_attack = true,
    },
    ["gSpiritCharge"] = {
        move = "Soul Charge",
        kommand = "BF2",
        hit_dmg = 80.00,
        block_dmg = 20.000,
        block_type = BLOCK_TYPE.MID,
        startup = 15,
        active = 10,
        recovery = 28,
        cancel = 0,
        hit_advantage = 30,
        block_advantage = -16,
        flawless_block_advantage = -16,
    },
    ["gSpiritChargeEX"] = {
        move = "Enhanced Soul Charge",
        kommand = "BF2+EX",
        hit_dmg = 110.00,
        block_dmg = 23.750,
        block_type = BLOCK_TYPE.MID,
        startup = 15,
        active = 10,
        recovery = 28,
        cancel = 0,
        hit_advantage = 30,
        block_advantage = -16,
        flawless_block_advantage = -16,
    },
    ["gDropSlash"] = {
        move = "Demon Drop",
        kommand = "DB2",
        hit_dmg = 60.00,
        block_dmg = 17.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 27,
        active = 3,
        recovery = 36,
        cancel = 0,
        hit_advantage = 30,
        block_advantage = -17,
        flawless_block_advantage = -17,
    },
    ["gDropSlashEX"] = {
        move = "Enhanced Demon Drop",
        kommand = "DB2+EX",
        hit_dmg = 60.00,
        block_dmg = 17.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 27,
        active = 3,
        recovery = 36,
        cancel = 0,
        hit_advantage = 73,
        block_advantage = -17,
        flawless_block_advantage = -17,
    },
    ["gRisingKarma"] = {
        move = "Rising Karma",
        kommand = "BF3",
        hit_dmg = 50.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.MID,
        startup = 18,
        active = 9,
        recovery = 26,
        cancel = 0,
        hit_advantage = 46,
        block_advantage = -16,
        flawless_block_advantage = -16,
    },
    ["gRisingKarmaEX"] = {
        move = "Enhanced Rising Karma",
        kommand = "BF3+EX",
        hit_dmg = 90.00,
        block_dmg = 21.250,
        block_type = BLOCK_TYPE.MID,
        startup = 18,
        active = 9,
        recovery = 26,
        cancel = 0,
        hit_advantage = 46,
        block_advantage = -16,
        flawless_block_advantage = -16,
    },
    ["gForcePush"] = {
        move = "Force Push",
        kommand = "BF4",
        hit_dmg = 70.00,
        block_dmg = 18.750,
        block_type = BLOCK_TYPE.MID,
        startup = 72,
        active = 10,
        recovery = 28,
        cancel = 0,
        hit_advantage = 13,
        block_advantage = -11,
        flawless_block_advantage = -11,
    },
    ["gForcePushEX"] = {
        move = "Enhanced Force Push",
        kommand = "BF4+EX",
        hit_dmg = 90.00,
        block_dmg = 21.250,
        block_type = BLOCK_TYPE.MID,
        startup = 37,
        active = 10,
        recovery = 23,
        cancel = 0,
        hit_advantage = 35,
        block_advantage = -1,
        flawless_block_advantage = -1,
    },
    ["gSoulSeperate"] = {
        move = "Summon Ancestor",
        kommand = "DB1",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 1,
        active = 0,
        recovery = 60,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
        no_attack = true,
    },
    ["gSoulRecall"] = {
        move = "Banish Ancestor",
        kommand = "DB1",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 1,
        active = 0,
        recovery = 68,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
        no_attack = true,
    },
    ["gSoulReposition"] = {
        move = "Spiritual Alignment",
        kommand = "DB2",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 1,
        active = 0,
        recovery = 60,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
        no_attack = true,
    },
    ["gSoulRepositionEX"] = {
        move = "Enhanced Spiritual Alignment",
        kommand = "DB2+EX",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 1,
        active = 0,
        recovery = 60,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
        no_attack = true,
    },
    ["gRisingUppercut"] = {
        move = "Soaring Sento",
        kommand = "DB3",
        hit_dmg = 70.00,
        block_dmg = 18.750,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 9,
        recovery = 43,
        cancel = 0,
        hit_advantage = 25,
        block_advantage = -20,
        flawless_block_advantage = -20,
    },
    ["gRisingUppercutEX"] = {
        move = "Enhanced Soaring Sento",
        kommand = "DB3+EX",
        hit_dmg = 70.00,
        block_dmg = 18.750,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 9,
        recovery = 44,
        cancel = 0,
        hit_advantage = 36,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gSwitchSlash"] = {
        move = "Teamwork",
        kommand = "DB4",
        hit_dmg = 130.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.MID,
        startup = 16,
        active = 2,
        recovery = 45,
        cancel = 0,
        hit_advantage = 15,
        block_advantage = -15,
        flawless_block_advantage = -15,
    },
    ["gSwitchSlashEX"] = {
        move = "Ancestral Assist",
        kommand = "DB4+EX",
        hit_dmg = 180.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.MID,
        startup = 15,
        active = 20,
        recovery = 46,
        cancel = 0,
        hit_advantage = 15,
        block_advantage = -13,
        flawless_block_advantage = -23,
    },
    ["gSupermoveAttack"] = {
        move = "Two Heavens Assault",
        kommand = "SS+EX",
        hit_dmg = 350.00,
        block_dmg = 22.500,
        block_type = BLOCK_TYPE.MID,
        startup = 19,
        active = 7,
        recovery = 73,
        cancel = 0,
        hit_advantage = 17,
        block_advantage = -36,
        flawless_block_advantage = -46,
    },
}
