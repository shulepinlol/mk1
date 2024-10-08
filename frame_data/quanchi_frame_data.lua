local game_data = require("game_data")
local BLOCK_TYPE = game_data.BLOCK_TYPE

return {
    ["gAttack1"] = {
        move = "Sorcerer Smack",
        kommand = "1",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 8,
        active = 2,
        recovery = 20,
        cancel = 17,
        hit_advantage = 16,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gAttack1_2"] = {
        move = "Dangerous Ally",
        kommand = "1,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 19,
        active = 2,
        recovery = 32,
        cancel = 27,
        hit_advantage = 10,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAttack1_2_2"] = {
        move = "Tamed Impaler",
        kommand = "1,2,2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 23,
        active = 4,
        recovery = 28,
        cancel = 0,
        hit_advantage = 36,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gAttack1_3"] = {
        move = "Skewer Strike",
        kommand = "1,3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 24,
        active = 3,
        recovery = 26,
        cancel = 0,
        hit_advantage = 52,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack1Down"] = {
        move = "Beyond The Grave",
        kommand = "D+1",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 2,
        recovery = 25,
        cancel = 20,
        hit_advantage = 10,
        block_advantage = -10,
        flawless_block_advantage = -10,
    },
    ["gAttack2"] = {
        move = "Baleful Banshee Blast",
        kommand = "2",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 12,
        active = 3,
        recovery = 21,
        cancel = 23,
        hit_advantage = 17,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAttack2_1"] = {
        move = "Soul Extinguisher",
        kommand = "2,1",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.MID,
        startup = 20,
        active = 2,
        recovery = 23,
        cancel = 33,
        hit_advantage = 16,
        block_advantage = -3,
        flawless_block_advantage = -3,
    },
    ["gAttack2_1_3"] = {
        move = "Lowest Of Blows",
        kommand = "2,1,3",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 20,
        active = 7,
        recovery = 22,
        cancel = 0,
        hit_advantage = 28,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack2_1_4"] = {
        move = "Bow Already!",
        kommand = "2,1,4",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 12,
        active = 2,
        recovery = 35,
        cancel = 27,
        hit_advantage = 2,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAttack2_1_4_4"] = {
        move = "Close Enough!",
        kommand = "2,1,4,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 2,
        recovery = 28,
        cancel = 0,
        hit_advantage = 25,
        block_advantage = -8,
        flawless_block_advantage = -8,
    },
    ["gAttack2Away"] = {
        move = "Nether Eruption",
        kommand = "B+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 27,
        active = 3,
        recovery = 31,
        cancel = 42,
        hit_advantage = 11,
        block_advantage = -12,
        flawless_block_advantage = -12,
    },
    ["gAttack2Towards"] = {
        move = "Kompound Fractures",
        kommand = "F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 5,
        recovery = 33,
        cancel = 24,
        hit_advantage = 3,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack2Towards_1"] = {
        move = "Skeleton Jacker",
        kommand = "F+2,1",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 14,
        active = 5,
        recovery = 30,
        cancel = 0,
        hit_advantage = 33,
        block_advantage = -13,
        flawless_block_advantage = -13,
    },
    ["gAttack2Down"] = {
        move = "Killer Kalcium",
        kommand = "D+2",
        hit_dmg = 140.00,
        block_dmg = 21.000,
        block_type = BLOCK_TYPE.HIGH,
        startup = 10,
        active = 3,
        recovery = 44,
        cancel = 0,
        hit_advantage = 24,
        block_advantage = -5,
        flawless_block_advantage = -15,
    },
    ["gAttack3"] = {
        move = "Is That A Tongue?",
        kommand = "3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 16,
        active = 3,
        recovery = 35,
        cancel = 0,
        hit_advantage = 33,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack3Away"] = {
        move = "Tripper",
        kommand = "B+3",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 16,
        active = 2,
        recovery = 27,
        cancel = 26,
        hit_advantage = 8,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack3Away_4"] = {
        move = "Taste Test",
        kommand = "B+3,4",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 20,
        active = 4,
        recovery = 25,
        cancel = 0,
        hit_advantage = 41,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack3Away_4_2"] = {
        move = "Koccyx Krusher",
        kommand = "B+3,4,2",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 20,
        active = 5,
        recovery = 22,
        cancel = 0,
        hit_advantage = 40,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAttack3Down"] = {
        move = "Bone Breaker",
        kommand = "D+3",
        hit_dmg = 20.00,
        block_dmg = 3.000,
        block_type = BLOCK_TYPE.LOW,
        startup = 11,
        active = 2,
        recovery = 22,
        cancel = 23,
        hit_advantage = 14,
        block_advantage = -7,
        flawless_block_advantage = -7,
    },
    ["gAttack4"] = {
        move = "Kunning Kick",
        kommand = "4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 12,
        active = 3,
        recovery = 45,
        cancel = 28,
        hit_advantage = 15,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gAttack4Away"] = {
        move = "Shin Splinter",
        kommand = "B+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 12,
        active = 3,
        recovery = 29,
        cancel = 0,
        hit_advantage = 14,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gAttack4Towards"] = {
        move = "Alternative Acrobatics",
        kommand = "F+4",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 11,
        active = 3,
        recovery = 31,
        cancel = 26,
        hit_advantage = 1,
        block_advantage = -2,
        flawless_block_advantage = -2,
    },
    ["gAttack4Towards_4"] = {
        move = "Pain With Portals",
        kommand = "F+4,4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.HIGH,
        startup = 14,
        active = 2,
        recovery = 30,
        cancel = 0,
        hit_advantage = 36,
        block_advantage = -5,
        flawless_block_advantage = -5,
    },
    ["gAttack4Down"] = {
        move = "Eternal Servitude",
        kommand = "D+4",
        hit_dmg = 30.00,
        block_dmg = 4.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 13,
        active = 3,
        recovery = 25,
        cancel = 25,
        hit_advantage = 15,
        block_advantage = -6,
        flawless_block_advantage = -6,
    },
    ["gAttack4_Special"] = {
        move = "Best Foot Backward",
        kommand = "D+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 17,
        active = 2,
        recovery = 42,
        cancel = 0,
        hit_advantage = 15,
        block_advantage = -12,
        flawless_block_advantage = -12,
    },
    ["gAttack1JumpUp"] = {
        move = "Planned Punch",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 5,
        recovery = 38,
        cancel = 22,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpForward"] = {
        move = "Planned Punch",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 5,
        recovery = 38,
        cancel = 22,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpBackward"] = {
        move = "Planned Punch",
        kommand = "U+F+1",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.MID,
        startup = 9,
        active = 5,
        recovery = 38,
        cancel = 22,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack1JumpUp_2"] = {
        move = "Risen Rake",
        kommand = "U+F+1,2",
        hit_dmg = 27.00,
        block_dmg = 4.100,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 3,
        recovery = 35,
        cancel = 44,
        hit_advantage = 20,
        block_advantage = -19,
        flawless_block_advantage = -24,
    },
    ["gAttack1JumpForward_2"] = {
        move = "Risen Rake",
        kommand = "U+F+1,2",
        hit_dmg = 27.00,
        block_dmg = 4.100,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 3,
        recovery = 35,
        cancel = 44,
        hit_advantage = 20,
        block_advantage = -19,
        flawless_block_advantage = -24,
    },
    ["gAttack1JumpBackward_2"] = {
        move = "Risen Rake",
        kommand = "U+F+1,2",
        hit_dmg = 27.00,
        block_dmg = 4.100,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 13,
        active = 3,
        recovery = 35,
        cancel = 44,
        hit_advantage = 20,
        block_advantage = -19,
        flawless_block_advantage = -24,
    },
    ["gAttack1JumpUp_2_2"] = {
        move = "Brilliant Blast",
        kommand = "U+F+1,2,2",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 18,
        active = 7,
        recovery = 34,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -22,
        flawless_block_advantage = -27,
    },
    ["gAttack1JumpForward_2_2"] = {
        move = "Brilliant Blast",
        kommand = "U+F+1,2,2",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 18,
        active = 7,
        recovery = 34,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -22,
        flawless_block_advantage = -27,
    },
    ["gAttack1JumpBackward_2_2"] = {
        move = "Brilliant Blast",
        kommand = "U+F+1,2,2",
        hit_dmg = 90.00,
        block_dmg = 13.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 18,
        active = 7,
        recovery = 34,
        cancel = 0,
        hit_advantage = 23,
        block_advantage = -22,
        flawless_block_advantage = -27,
    },
    ["gAttack2JumpUp"] = {
        move = "Serve Me!",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 11,
        active = 4,
        recovery = 38,
        cancel = 25,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpForward"] = {
        move = "Serve Me!",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 11,
        active = 4,
        recovery = 38,
        cancel = 25,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpBackward"] = {
        move = "Serve Me!",
        kommand = "U+F+2",
        hit_dmg = 50.00,
        block_dmg = 7.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 11,
        active = 4,
        recovery = 38,
        cancel = 25,
        hit_advantage = 5,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack2JumpUp_1"] = {
        move = "Double Death Dealer",
        kommand = "U+F+2,1",
        hit_dmg = 27.00,
        block_dmg = 4.100,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 4,
        recovery = 34,
        cancel = 48,
        hit_advantage = 43,
        block_advantage = -24,
        flawless_block_advantage = -24,
    },
    ["gAttack2JumpForward_1"] = {
        move = "Double Death Dealer",
        kommand = "U+F+2,1",
        hit_dmg = 27.00,
        block_dmg = 4.100,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 4,
        recovery = 34,
        cancel = 48,
        hit_advantage = 43,
        block_advantage = -24,
        flawless_block_advantage = -24,
    },
    ["gAttack2JumpBackward_1"] = {
        move = "Double Death Dealer",
        kommand = "U+F+2,1",
        hit_dmg = 27.00,
        block_dmg = 4.100,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 4,
        recovery = 34,
        cancel = 48,
        hit_advantage = 43,
        block_advantage = -24,
        flawless_block_advantage = -24,
    },
    ["gAttack2JumpUp_4"] = {
        move = "Be Gone!",
        kommand = "U+F+2,4",
        hit_dmg = 81.00,
        block_dmg = 12.200,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 7,
        recovery = 34,
        cancel = 0,
        hit_advantage = 27,
        block_advantage = -27,
        flawless_block_advantage = -27,
    },
    ["gAttack2JumpForward_4"] = {
        move = "Be Gone!",
        kommand = "U+F+2,4",
        hit_dmg = 81.00,
        block_dmg = 12.200,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 7,
        recovery = 34,
        cancel = 0,
        hit_advantage = 27,
        block_advantage = -27,
        flawless_block_advantage = -27,
    },
    ["gAttack2JumpBackward_4"] = {
        move = "Be Gone!",
        kommand = "U+F+2,4",
        hit_dmg = 81.00,
        block_dmg = 12.200,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 17,
        active = 7,
        recovery = 34,
        cancel = 0,
        hit_advantage = 27,
        block_advantage = -27,
        flawless_block_advantage = -27,
    },
    ["gAttack3JumpUp"] = {
        move = "Quan-Chi-nius Kick",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 6,
        recovery = 38,
        cancel = 35,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpForward"] = {
        move = "Quan-Chi-nius Kick",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 6,
        recovery = 38,
        cancel = 35,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack3JumpBackward"] = {
        move = "Quan-Chi-nius Kick",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 6,
        recovery = 38,
        cancel = 35,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpUp"] = {
        move = "Quan-Chi-nius Kick",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 6,
        recovery = 38,
        cancel = 35,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpForward"] = {
        move = "Quan-Chi-nius Kick",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 6,
        recovery = 38,
        cancel = 35,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
    },
    ["gAttack4JumpBackward"] = {
        move = "Quan-Chi-nius Kick",
        kommand = "U+F+3 or U+F+4",
        hit_dmg = 70.00,
        block_dmg = 10.500,
        block_type = BLOCK_TYPE.MID,
        startup = 11,
        active = 6,
        recovery = 38,
        cancel = 35,
        hit_advantage = 23,
        block_advantage = -23,
        flawless_block_advantage = -23,
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
    ["gSkullProjectile"] = {
        move = "Head Rush",
        kommand = "BF1",
        hit_dmg = 70.00,
        block_dmg = 18.700,
        block_type = BLOCK_TYPE.HIGH,
        startup = 18,
        active = 30,
        recovery = 38,
        cancel = 0,
        hit_advantage = 3,
        block_advantage = -17,
        flawless_block_advantage = -17,
        is_projectile = true,
    },
    ["gSkullProjectileEX"] = {
        move = "Enhanced Head Rush",
        kommand = "BF1+EX",
        hit_dmg = 120.00,
        block_dmg = 25.000,
        block_type = BLOCK_TYPE.MID,
        startup = 38,
        active = 71,
        recovery = 42,
        cancel = 0,
        hit_advantage = 36,
        block_advantage = -21,
        flawless_block_advantage = -21,
        is_projectile = true,
    },
    ["gSkullProjectileAir"] = {
        move = "(Air) Head Rush",
        kommand = "BF1",
        hit_dmg = 60.00,
        block_dmg = 17.500,
        block_type = BLOCK_TYPE.MID,
        startup = 13,
        active = 90,
        recovery = 0,
        cancel = 0,
        hit_advantage = -13,
        block_advantage = -33,
        flawless_block_advantage = -33,
        is_projectile = true,
    },
    ["gSkullProjectileAirEX"] = {
        move = "(Air) Enhanced Head Rush",
        kommand = "BF1+EX",
        hit_dmg = 110.00,
        block_dmg = 23.700,
        block_type = BLOCK_TYPE.MID,
        startup = 13,
        active = 90,
        recovery = 0,
        cancel = 0,
        hit_advantage = 6,
        block_advantage = -33,
        flawless_block_advantage = -33,
        is_projectile = true,
    },
    ["gDownwardProjectile"] = {
        move = "Psycho Skull",
        kommand = "DB1",
        hit_dmg = 80.00,
        block_dmg = 20.000,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 34,
        active = 14,
        recovery = 28,
        cancel = 0,
        hit_advantage = 2,
        block_advantage = -17,
        flawless_block_advantage = -17,
        is_projectile = true,
    },
    ["gDownwardProjectileEX"] = {
        move = "Enhanced Psycho Skull",
        kommand = "DB1+EX",
        hit_dmg = 60.00,
        block_dmg = 17.500,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 34,
        active = 11,
        recovery = 31,
        cancel = 0,
        hit_advantage = 46,
        block_advantage = -11,
        flawless_block_advantage = -11,
        is_projectile = true,
    },
    ["gSkullProjectileDownwardBuffed"] = {
        move = "Psycho Skull Volley",
        kommand = "DB1",
        hit_dmg = 85.57,
        block_dmg = 26.200,
        block_type = BLOCK_TYPE.MID,
        startup = 36,
        active = 34,
        recovery = 0,
        cancel = 0,
        hit_advantage = 29,
        block_advantage = 10,
        flawless_block_advantage = 10,
    },
    ["gSkullProjectileDownwardBuffedEX"] = {
        move = "Enhanced Psycho Skull Volley",
        kommand = "DB1+EX",
        hit_dmg = 165.45,
        block_dmg = 52.500,
        block_type = BLOCK_TYPE.MID,
        startup = 36,
        active = 34,
        recovery = 0,
        cancel = 0,
        hit_advantage = 29,
        block_advantage = 10,
        flawless_block_advantage = 10,
    },
    ["gBoneTrap"] = {
        move = "Field of Bones",
        kommand = "BDF2",
        hit_dmg = 30.00,
        block_dmg = 13.700,
        block_type = BLOCK_TYPE.MID,
        startup = 25,
        active = 50,
        recovery = 1,
        cancel = 0,
        hit_advantage = 38,
        block_advantage = -21,
        flawless_block_advantage = -21,
    },
    ["gBoneCageEX"] = {
        move = "Enhanced Field Of Bones",
        kommand = "BDF2+EX",
        hit_dmg = 30.00,
        block_dmg = 0,
        block_type = BLOCK_TYPE.UNBLOCKABLE,
        startup = 25,
        active = 0,
        recovery = 51,
        cancel = 0,
        hit_advantage = 38,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gBubbleBuff_Rune1"] = {
        move = "Zone Of Power",
        kommand = "DB3",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 12,
        active = 0,
        recovery = 0,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gBubbleBuffEX"] = {
        move = "Zone Of Fear",
        kommand = "DB3+EX",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 12,
        active = 0,
        recovery = 0,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gBubbleBuff_Rune3"] = {
        move = "Zone Of Waste",
        kommand = "DF3",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 12,
        active = 0,
        recovery = 0,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gBubbleBuff_Rune3EX"] = {
        move = "Enhanced Zone Of Waste",
        kommand = "DF3+EX",
        hit_dmg = 0,
        block_dmg = 0,
        block_type = BLOCK_TYPE.NONE,
        startup = 12,
        active = 0,
        recovery = 0,
        cancel = 0,
        hit_advantage = 0,
        block_advantage = 0,
        flawless_block_advantage = 0,
    },
    ["gSkyDrop"] = {
        move = "Falling Death",
        kommand = "BF4",
        hit_dmg = 90.00,
        block_dmg = 16.300,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 25,
        active = 7,
        recovery = 19,
        cancel = 0,
        hit_advantage = 10,
        block_advantage = -17,
        flawless_block_advantage = -17,
    },
    ["gSkyDropEX"] = {
        move = "Enhanced Falling Death",
        kommand = "BF4+EX",
        hit_dmg = 110.00,
        block_dmg = 16.300,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 25,
        active = 7,
        recovery = 19,
        cancel = 0,
        hit_advantage = 10,
        block_advantage = -17,
        flawless_block_advantage = -17,
    },
    ["gSkyDropAir"] = {
        move = "(Air) Falling Death",
        kommand = "BF4",
        hit_dmg = 90.00,
        block_dmg = 16.300,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 26,
        active = 7,
        recovery = 19,
        cancel = 0,
        hit_advantage = 10,
        block_advantage = -17,
        flawless_block_advantage = -17,
    },
    ["gSkyDropAirEX"] = {
        move = "(Air) Enhanced Falling Death",
        kommand = "BF4+EX",
        hit_dmg = 110.00,
        block_dmg = 16.300,
        block_type = BLOCK_TYPE.OVERHEAD,
        startup = 26,
        active = 7,
        recovery = 19,
        cancel = 0,
        hit_advantage = 10,
        block_advantage = -17,
        flawless_block_advantage = -17,
    },
    ["gLegGrab"] = {
        move = "From The Fog",
        kommand = "DB4",
        hit_dmg = 70.00,
        block_dmg = 12.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 20,
        active = 5,
        recovery = 39,
        cancel = 0,
        hit_advantage = 15,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gLegGrabEX"] = {
        move = "Enhanced From The Fog",
        kommand = "DB4+EX",
        hit_dmg = 70.00,
        block_dmg = 12.500,
        block_type = BLOCK_TYPE.LOW,
        startup = 20,
        active = 5,
        recovery = 39,
        cancel = 0,
        hit_advantage = 62,
        block_advantage = -22,
        flawless_block_advantage = -22,
    },
    ["gSupermoveAttack"] = {
        move = "Journey Through Hell",
        kommand = "SS+EX",
        hit_dmg = 350.00,
        block_dmg = 22.500,
        block_type = BLOCK_TYPE.MID,
        startup = 121,
        active = 16,
        recovery = 61,
        cancel = 0,
        hit_advantage = 22,
        block_advantage = -28,
        flawless_block_advantage = -38,
    },
}
