#> Check a player's scrap count to give a gun
execute unless entity @s[tag=innocent,tag=!gunner,tag=!spectator] run return run advancement revoke @s only mcm:items/scrap

# Event log
execute if entity @s[tag=queued] run function mcm:summary/add_event {translate:"mcm.game.events.crafted_gun",color:"green",type:1}

execute store result score $cost_check vars run data get storage mcm:game_state state.rules.gun_cost
execute store result score $player_scrap vars if items entity @s container.* netherite_scrap[custom_data~{scrap:1b}]
scoreboard players operation $cost_check vars -= $player_scrap vars
scoreboard players reset $player_scrap vars

data merge storage mcm:args {gun:{retrieve:"gun",cost:10}}
data modify storage mcm:args gun.cost set from storage mcm:game_state state.rules.gun_cost
execute if score $cost_check vars matches ..0 run function mcm:items/cleanup/retrieval with storage mcm:args gun
scoreboard players reset $cost_check vars
data remove storage mcm:args gun

advancement revoke @s only mcm:items/scrap
