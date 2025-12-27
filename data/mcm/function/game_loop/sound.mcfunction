execute store result score $temp vars run function mcm:util/next_prng
scoreboard players operation $temp vars %= $one_hundred math
execute store result score $rng_check vars run data get storage mcm:game_state state.rules.sound_chance 100
$execute if score $temp vars < $rng_check vars run playsound $(sound) master @a[tag=queued] ~ ~ ~ $(vol)

scoreboard players reset $temp vars
scoreboard players reset $rng_check vars
