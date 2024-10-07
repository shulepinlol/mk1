local game_data = require("game_data")
local BLOCK_TYPE = game_data.BLOCK_TYPE

return {
    ["gAttack1"] = {
        move = "Seared Strike",
        kommand = "1",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 7,
        active = 2,
        recovery = 18,
        cancel = 15,
        hit_advantage = 18,
        block_advantage = 2,
        flawless_block_advantage = 2,
    },
    ["gAttack1_2"] = {
        move = "Whiplash",
        kommand = "1,2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 18,
        active = 4,
        recovery = 21,
        cancel = 29,
        hit_advantage = 10,
        block_advantage = -3,
        flawless_block_advantage = -3,
    },
    ["gAttack1_2_2"] = {
        move = "Hell's Hook",
        kommand = "1,2,2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 24,
        active = 3,
        recovery = 42,
        cancel = 0,
        hit_advantage = 10,
        block_advantage = -3,
        flawless_block_advantage = -13,
    },
    ["gAttack1Down"] = {
        move = "Hard Knuckles",
        kommand = "D+1",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 2,
        recovery = 23,
        cancel = 16,
        hit_advantage = 12,
        block_advantage = -8,
        flawless_block_advantage = -8,
    },
    ["gAttack2"] = {
        move = "Spear Strike",
        kommand = "2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 10,
        active = 2,
        recovery = 22,
        cancel = 20,
        hit_advantage = 20,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAttack2_1"] = {
        move = "Inner Pain",
        kommand = "2,1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.MID,
        startup = 13,
        active = 2,
        recovery = 26,
        cancel = 25,
        hit_advantage = 17,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack2_1_4"] = {
        move = "Deadly Assassin",
        kommand = "2,1,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 23,
        active = 2,
        recovery = 26,
        cancel = 0,
        hit_advantage = 25,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack2Away"] = {
        move = "Swiping Kunai",
        kommand = "B+2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 9,
        active = 2,
        recovery = 30,
        cancel = 20,
        hit_advantage = 39,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gAttack2Down"] = {
        move = "Rising Kunai",
        kommand = "D+2",
        hit_dmg = 140.00,
        block_dmg = 21.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 9,
        active = 4,
        recovery = 42,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -4,
        flawless_block_advantage = -14,
    },
    ["gAttack3"] = {
        move = "Front Kick",
        kommand = "3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 13,
        active = 3,
        recovery = 26,
        cancel = 24,
        hit_advantage = 10,
        block_advantage = -4,
        flawless_block_advantage = -4,
    },
    ["gAttack3_3"] = {
        move = "Shirai Who",
        kommand = "3,3",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 3,
        recovery = 24,
        cancel = 26,
        hit_advantage = 17,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAttack3_3_3"] = {
        move = "Krackjaw",
        kommand = "3,3,3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 17,
        active = 2,
        recovery = 25,
        cancel = 28,
        hit_advantage = 24,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAttack3Towards"] = {
        move = "Heavy Knee",
        kommand = "F+3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 12,
        active = 2,
        recovery = 25,
        cancel = 21,
        hit_advantage = 15,
        block_advantage = -3,
        flawless_block_advantage = -3,
    },
    ["gAttack3Towards_2"] = {
        move = "Raising Hell",
        kommand = "F+3,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 22,
        active = 2,
        recovery = 26,
        cancel = 0,
        hit_advantage = 61,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack3Towards_4"] = {
        move = "Fire Pillar Thrust",
        kommand = "F+3,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 18,
        active = 2,
        recovery = 26,
        cancel = 32,
        hit_advantage = 47,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack3Away"] = {
        move = "Sweeping Scorpion Tail",
        kommand = "B+3",
        hit_dmg = 116.50,
        block_dmg = 25.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 21,
        active = 28,
        recovery = 46,
        cancel = 33,
        hit_advantage = 21,
        block_advantage = -19,
        flawless_block_advantage = -19,
        multi_hit = true
    },
    ["gAttack3Down"] = {
        move = "Charred Heel",
        kommand = "D+3",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.LOW,
        startup = 10,
        active = 2,
        recovery = 27,
        cancel = 20,
        hit_advantage = 9,
        block_advantage = -12,
        flawless_block_advantage = -12,
    },
    ["gAttack4"] = {
        move = "Side Kick",
        kommand = "4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 11,
        active = 3,
        recovery = 23,
        cancel = 23,
        hit_advantage = 17,
        block_advantage = -4,
        flawless_block_advantage = -4,
    },
    ["gAttack4Away"] = {
        move = "Sweeping Predator",
        kommand = "B+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 10,
        active = 2,
        recovery = 32,
        cancel = 0,
        hit_advantage = 12,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAttack4Towards"] = {
        move = "Falcon Dragon",
        kommand = "F+4",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 16,
        active = 3,
        recovery = 26,
        cancel = 0,
        hit_advantage = 54,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack4Down"] = {
        move = "Metasoma",
        kommand = "D+4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 11,
        active = 2,
        recovery = 26,
        cancel = 25,
        hit_advantage = 15,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack1JumpUp"] = {
        move = "Quick Slice",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 8,
        active = 3,
        recovery = 38,
        cancel = 12,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpForward"] = {
        move = "Quick Slice",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 8,
        active = 3,
        recovery = 38,
        cancel = 12,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpBackward"] = {
        move = "Quick Slice",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 8,
        active = 3,
        recovery = 38,
        cancel = 12,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpUp_1"] = {
        move = "Burning Fist",
        kommand = "U+F+1,1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 5,
        recovery = 34,
        cancel = 46,
        hit_advantage = 19,
        block_advantage = -25,
        flawless_block_advantage = -25,
    },
    ["gAttack1JumpForward_1"] = {
        move = "Burning Fist",
        kommand = "U+F+1,1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 5,
        recovery = 34,
        cancel = 46,
        hit_advantage = 19,
        block_advantage = -25,
        flawless_block_advantage = -25,
    },
    ["gAttack1JumpBackward_1"] = {
        move = "Burning Fist",
        kommand = "U+F+1,1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 5,
        recovery = 34,
        cancel = 46,
        hit_advantage = 19,
        block_advantage = -25,
        flawless_block_advantage = -25,
    },
    ["gAttack1JumpUp_1_1"] = {
        move = "Inner Flame",
        kommand = "U+F+1,1,1",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 3,
        recovery = 32,
        cancel = 41,
        hit_advantage = 40,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gAttack1JumpForward_1_1"] = {
        move = "Inner Flame",
        kommand = "U+F+1,1,1",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 3,
        recovery = 32,
        cancel = 41,
        hit_advantage = 40,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gAttack1JumpBackward_1_1"] = {
        move = "Inner Flame",
        kommand = "U+F+1,1,1",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 3,
        recovery = 32,
        cancel = 41,
        hit_advantage = 40,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gAttack1JumpUp_1_2"] = {
        move = "Get Over There",
        kommand = "U+F+1,1,2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 3,
        recovery = 30,
        cancel = 43,
        hit_advantage = 44,
        block_advantage = -19,
        flawless_block_advantage = -19,
    },
    ["gAttack1JumpForward_1_2"] = {
        move = "Get Over There",
        kommand = "U+F+1,1,2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 3,
        recovery = 30,
        cancel = 43,
        hit_advantage = 44,
        block_advantage = -19,
        flawless_block_advantage = -19,
    },
    ["gAttack1JumpBackward_1_2"] = {
        move = "Get Over There",
        kommand = "U+F+1,1,2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 3,
        recovery = 30,
        cancel = 43,
        hit_advantage = 44,
        block_advantage = -19,
        flawless_block_advantage = -19,
    },
    ["gAttack1JumpUp_1_4"] = {
        move = "Flipping Out",
        kommand = "U+F+1,1,4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 4,
        recovery = 43,
        cancel = 56,
        hit_advantage = 10,
        block_advantage = -33,
        flawless_block_advantage = -33,
    },
    ["gAttack1JumpForward_1_4"] = {
        move = "Flipping Out",
        kommand = "U+F+1,1,4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 4,
        recovery = 43,
        cancel = 56,
        hit_advantage = 10,
        block_advantage = -33,
        flawless_block_advantage = -33,
    },
    ["gAttack1JumpBackward_1_4"] = {
        move = "Flipping Out",
        kommand = "U+F+1,1,4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 4,
        recovery = 43,
        cancel = 56,
        hit_advantage = 10,
        block_advantage = -33,
        flawless_block_advantage = -33,
    },
    ["gAttack1JumpUp_2"] = {
        move = "Swinging Kyo",
        kommand = "U+F+1,2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 2,
        recovery = 36,
        cancel = 45,
        hit_advantage = 41,
        block_advantage = -24,
        flawless_block_advantage = -24,
    },
    ["gAttack1JumpForward_2"] = {
        move = "Swinging Kyo",
        kommand = "U+F+1,2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 2,
        recovery = 36,
        cancel = 45,
        hit_advantage = 41,
        block_advantage = -24,
        flawless_block_advantage = -24,
    },
    ["gAttack1JumpBackward_2"] = {
        move = "Swinging Kyo",
        kommand = "U+F+1,2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 14,
        active = 2,
        recovery = 36,
        cancel = 45,
        hit_advantage = 41,
        block_advantage = -24,
        flawless_block_advantage = -24,
    },
    ["gAttack1JumpUp_3"] = {
        move = "Krushing Kunai",
        kommand = "U+F+1,3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 2,
        recovery = 32,
        cancel = 43,
        hit_advantage = 43,
        block_advantage = -20,
        flawless_block_advantage = -20,
    },
    ["gAttack1JumpForward_3"] = {
        move = "Krushing Kunai",
        kommand = "U+F+1,3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 2,
        recovery = 32,
        cancel = 43,
        hit_advantage = 43,
        block_advantage = -20,
        flawless_block_advantage = -20,
    },
    ["gAttack1JumpBackward_3"] = {
        move = "Krushing Kunai",
        kommand = "U+F+1,3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 2,
        recovery = 32,
        cancel = 43,
        hit_advantage = 43,
        block_advantage = -20,
        flawless_block_advantage = -20,
    },
    ["gAttack2JumpUp"] = {
        move = "Burning Spear",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 3,
        recovery = 38,
        cancel = 12,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpForward"] = {
        move = "Burning Spear",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 3,
        recovery = 38,
        cancel = 12,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpBackward"] = {
        move = "Burning Spear",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 7,
        active = 3,
        recovery = 38,
        cancel = 12,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpUp_1n3"] = {
        move = "Demonic Slam",
        kommand = "U+F+2,1+3",
        hit_dmg = 77.85,
        block_dmg = 2.700,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 2,
        recovery = 32,
        cancel = 19,
        hit_advantage = 20,
        block_advantage = -20,
        flawless_block_advantage = -20,
    },
    ["gAttack2JumpForward_1n3"] = {
        move = "Demonic Slam",
        kommand = "U+F+2,1+3",
        hit_dmg = 77.85,
        block_dmg = 2.700,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 2,
        recovery = 32,
        cancel = 19,
        hit_advantage = 20,
        block_advantage = -20,
        flawless_block_advantage = -20,
    },
    ["gAttack2JumpBackward_1n3"] = {
        move = "Demonic Slam",
        kommand = "U+F+2,1+3",
        hit_dmg = 77.85,
        block_dmg = 2.700,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 16,
        active = 2,
        recovery = 32,
        cancel = 19,
        hit_advantage = 20,
        block_advantage = -20,
        flawless_block_advantage = -20,
    },
    ["gAttack2JumpUp_4"] = {
        move = "Deadly Sting",
        kommand = "U+F+2,4",
        hit_dmg = 64.00,
        block_dmg = 9.450,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 19,
        active = 2,
        recovery = 35,
        cancel = 49,
        hit_advantage = 38,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpForward_4"] = {
        move = "Deadly Sting",
        kommand = "U+F+2,4",
        hit_dmg = 64.00,
        block_dmg = 9.450,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 19,
        active = 2,
        recovery = 35,
        cancel = 49,
        hit_advantage = 38,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpBackward_4"] = {
        move = "Deadly Sting",
        kommand = "U+F+2,4",
        hit_dmg = 64.00,
        block_dmg = 9.450,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 19,
        active = 2,
        recovery = 35,
        cancel = 49,
        hit_advantage = 38,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpUp"] = {
        move = "Tactical Tabi",
        kommand = "U+F+3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 10,
        active = 8,
        recovery = 38,
        cancel = 37,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpForward"] = {
        move = "Tactical Tabi",
        kommand = "U+F+3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 10,
        active = 8,
        recovery = 38,
        cancel = 37,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpBackward"] = {
        move = "Tactical Tabi",
        kommand = "U+F+3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 10,
        active = 8,
        recovery = 38,
        cancel = 37,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpUp"] = {
        move = "Tactical Tabi",
        kommand = "U+F+3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 10,
        active = 8,
        recovery = 38,
        cancel = 37,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpForward"] = {
        move = "Tactical Tabi",
        kommand = "U+F+3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 10,
        active = 8,
        recovery = 38,
        cancel = 37,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpBackward"] = {
        move = "Tactical Tabi",
        kommand = "U+F+3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 10,
        active = 8,
        recovery = 38,
        cancel = 37,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttackThrow"] = {
        move = "Shove",
        kommand = "F+THROW",
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
    ["gSpearThrow"] = {
        move = "Spear",
        kommand = "BF1",
        hit_dmg = 30.00,
        block_dmg = 13.750,
        block_type = BLOCK_TYPE.HIGH,
        startup = 17,
        active = 14,
        recovery = 70,
        cancel = 0,
        hit_advantage = 33,
        block_advantage = -28,
        flawless_block_advantage = -28,
    },
    ["gSpearThrowEX"] = {
        move = "Enhanced Spear",
        kommand = "BF1+EX",
        hit_dmg = 50.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.MID,
        startup = 17,
        active = 14,
        recovery = 70,
        cancel = 0,
        hit_advantage = 33,
        block_advantage = -28,
        flawless_block_advantage = -28,
    },
    ["gDashAttack"] = {
        move = "Blazing Charge",
        kommand = "BF2",
        hit_dmg = 80.00,
        block_dmg = 13.750,
        block_type = BLOCK_TYPE.MID,
        startup = 13,
        active = 4,
        recovery = 39,
        cancel = 0,
        hit_advantage = 17,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gDashAttackEX"] = {
        move = "Enhanced Blazing Charge",
        kommand = "BF2+EX",
        hit_dmg = 110.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.MID,
        startup = 13,
        active = 4,
        recovery = 39,
        cancel = 0,
        hit_advantage = 17,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gHookAir"] = {
        move = "(Air) Kyo Snag",
        kommand = "BF2",
        hit_dmg = 90.00,
        block_dmg = 0,
        block_type = BLOCK_TYPE.UNBLOCKABLE,
        startup = 24,
        active = 2,
        recovery = 34,
        cancel = 0,
        hit_advantage = 14,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gHookAirEX"] = {
        move = "(Air) Enhanced Kyo Snag",
        kommand = "BF2+EX",
        hit_dmg = 90.00,
        block_dmg = 0,
        block_type = BLOCK_TYPE.UNBLOCKABLE,
        startup = 24,
        active = 2,
        recovery = 34,
        cancel = 0,
        hit_advantage = 48,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gHookAirClose"] = {
        move = "(Air Close) Kyo Snag",
        kommand = "DB2",
        hit_dmg = 70.00,
        block_dmg = 0,
        block_type = BLOCK_TYPE.UNBLOCKABLE,
        startup = 24,
        active = 2,
        recovery = 34,
        cancel = 0,
        hit_advantage = 9,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gHookAirCloseEX"] = {
        move = "(Air Close) Enhanced Kyo Snag",
        kommand = "DB2+EX",
        hit_dmg = 70.00,
        block_dmg = 0,
        block_type = BLOCK_TYPE.UNBLOCKABLE,
        startup = 24,
        active = 2,
        recovery = 34,
        cancel = 0,
        hit_advantage = 48,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gRopeSpin"] = {
        move = "Twisted Kyo",
        kommand = "DB2",
        hit_dmg = 20.00,
        block_dmg = 12.500,
        block_type = BLOCK_TYPE.MID,
        startup = 20,
        active = 83,
        recovery = 43,
        cancel = 0,
        hit_advantage = 38,
        block_advantage = -25,
        flawless_block_advantage = -25,
        multi_hit = true
    },
    ["gRopeSpinEX"] = {
        move = "Enhanced Twisted Kyo",
        kommand = "DB2+EX",
        hit_dmg = 30.00,
        block_dmg = 13.750,
        block_type = BLOCK_TYPE.MID,
        startup = 20,
        active = 66,
        recovery = 43,
        cancel = 0,
        hit_advantage = 38,
        block_advantage = -25,
        flawless_block_advantage = -25,
        multi_hit = true
    },
    ["gTeleport"] = {
        move = "Flame-Port",
        kommand = "DB3",
        hit_dmg = 50.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.HIGH,
        startup = 26,
        active = 2,
        recovery = 41,
        cancel = 0,
        hit_advantage = 9,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gTeleportEX"] = {
        move = "Enhanced Flame-Port",
        kommand = "DB3+EX",
        hit_dmg = 50.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.HIGH,
        startup = 1,
        active = 0,
        recovery = 30,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gTeleportAir"] = {
        move = "(Air) Flame-Port",
        kommand = "DB3",
        hit_dmg = 50.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.HIGH,
        startup = 20,
        active = 2,
        recovery = 45,
        cancel = 0,
        hit_advantage = 6,
        block_advantage = -25,
        flawless_block_advantage = -25,
    },
    ["gTeleportAirEX"] = {
        move = "(Air) Enhanced Flame-Port",
        kommand = "DB3+EX",
        hit_dmg = 50.00,
        block_dmg = 16.250,
        block_type = BLOCK_TYPE.HIGH,
        startup = 20,
        active = 2,
        recovery = 35,
        cancel = 36,
        hit_advantage = 2,
        block_advantage = -15,
        flawless_block_advantage = -15,
    },
    ["gHellfire"] = {
        move = "Devouring Flame",
        kommand = "BF4",
        hit_dmg = 60.00,
        block_dmg = 17.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 31,
        active = 10,
        recovery = 50,
        cancel = 0,
        hit_advantage = 13,
        block_advantage = -38,
        flawless_block_advantage = -38,
    },
    ["gHellfireEX"] = {
        move = "Enhanced Devouring Flame",
        kommand = "BF4+EX",
        hit_dmg = 60.00,
        block_dmg = 0,
        block_type = BLOCK_TYPE.UNBLOCKABLE,
        startup = 31,
        active = 10,
        recovery = 50,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gSupermoveAttack"] = {
        move = "Speared And Seared",
        kommand = "SS+EX",
        hit_dmg = 350.00,
        block_dmg = 22.500,
        block_type = BLOCK_TYPE.MID,
        startup = 26,
        active = 5,
        recovery = 81,
        cancel = 0,
        hit_advantage = 15,
        block_advantage = -44,
        flawless_block_advantage = -54,
    },
}