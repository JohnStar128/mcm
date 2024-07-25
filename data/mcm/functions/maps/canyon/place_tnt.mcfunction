#> Place tnt when player clicks the interaction
execute store result score $tempuuid playerUUID run data get entity @s interaction.player[0]
data remove entity @s interaction

#> Fail case
execute as @a[predicate=mcm:matches_uuid] unless items entity @s weapon.* tnt run tellraw @s ["",{"translate":"mcm.canyon.place_tnt.fail","italics":false,"bold":false,"color":"red"}]
execute as @a[predicate=mcm:matches_uuid] unless items entity @s weapon.* tnt run return fail

execute as @a[predicate=mcm:matches_uuid] store result score $temp math run clear @s tnt
scoreboard players operation $canyon_tnt CmdData += $temp math
#execute as @a[predicate=mcm:matches_uuid] run clear @s tnt

scoreboard players set $event_type temp 3
execute store result storage mcm:game_summary temp.player2_text int 1 run scoreboard players get $temp math
data modify storage mcm:game_summary temp.player2_color set value "green"
execute as @a[predicate=mcm:matches_uuid] run function mcm:game/summary/add_event {translate:"mcm.game.events.canyon_place_tnt", color:"green"}

#> Summon displays. Duplicates are possible, but limited enough to not need to care
execute if score $canyon_partition CmdData matches 1 if score $canyon_tnt CmdData matches 1.. run summon block_display 2971.0 -28.0 3045.0 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 1 if score $canyon_tnt CmdData matches 2.. run summon block_display 2971.5 -28.0 3045.0 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 1 if score $canyon_tnt CmdData matches 3.. run summon block_display 2971.0 -28.0 3045.5 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 1 if score $canyon_tnt CmdData matches 4.. run summon block_display 2971.5 -28.0 3045.5 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 1 if score $canyon_tnt CmdData matches 5.. run summon block_display 2971.25 -27.5 3045.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}

execute if score $canyon_partition CmdData matches 2 if score $canyon_tnt CmdData matches 1.. run summon block_display 2957.0 -27.0 3044.0 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 2 if score $canyon_tnt CmdData matches 2.. run summon block_display 2957.5 -27.0 3044.0 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 2 if score $canyon_tnt CmdData matches 3.. run summon block_display 2957.0 -27.0 3044.5 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 2 if score $canyon_tnt CmdData matches 4.. run summon block_display 2957.5 -27.0 3044.5 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
execute if score $canyon_partition CmdData matches 2 if score $canyon_tnt CmdData matches 5.. run summon block_display 2957.25 -26.5 3044.25 {Tags:["canyon_tnt"],block_state:{"Name":"tnt"},transformation:[0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 1.0]}
