execute unless entity @s[tag=innocent,tag=!gunner,tag=!spectator] run return run advancement revoke @s only mcm:items/gun_pickup

# Event log
data merge storage mcm:game_summary {temp:{player2_text:"",player2_color:"dark_aqua"}}
data modify storage mcm:game_summary temp.player2_text set from entity @s Inventory[{components:{"minecraft:custom_data":{gun:1b}}}].components."minecraft:custom_data".owner
execute if entity @s[tag=queued] run function mcm:summary/add_event {translate:"mcm.game.events.picked_up_gun",color:"green",type:3}

tag @s add gunner
advancement revoke @s only mcm:items/gun_pickup
