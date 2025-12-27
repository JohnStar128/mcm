#> If the player got hit, check if they should die
#> and run the death function

#> Murderer friendly fire check
execute store result score $temp vars run data get storage mcm:game_state state.rules.murderer_friendly_fire
execute if score $temp vars matches 0 if entity @s[tag=murderer] on attacker if entity @s[tag=murderer] on target run advancement revoke @s only mcm:hit_detection/player_got_hit
execute if score $temp vars matches 0 if entity @s[tag=murderer] on attacker if entity @s[tag=murderer] on target run return run scoreboard players reset $temp vars
scoreboard players reset $temp vars

# Death message
data merge storage mcm:args {death:{msg:"mcm.game.killedby", arg1:"", color:"red", italic:false, bold:false, out:"storage mcm:args death.arg1"}}
execute on attacker store result storage mcm:args death.uuid int 1 run data get entity @s UUID[0]
execute on attacker run function mcm:util/get_player_name with storage mcm:args death

function mcm:player_state/death with storage mcm:args death
data remove storage mcm:args death

advancement revoke @s only mcm:hit_detection/player_got_hit
