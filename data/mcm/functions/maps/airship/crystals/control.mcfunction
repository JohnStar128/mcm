#> Tag players when they hold a crystal
execute as @a[tag=!hold_crystal,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1114}}}] run function mcm:maps/airship/crystals/summon_displays
execute as @a[tag=hold_crystal] at @s run function mcm:maps/airship/crystals/player_hold
execute as @a[tag=hold_crystal,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1114}}}] at @s run function mcm:maps/airship/crystals/kill_displays

execute as @e[type=item_display,tag=tp_beacon_display] at @s run function mcm:maps/airship/crystals/update_display

#> Grow crystals
scoreboard players operation $temp math = $gametimer CmdData
scoreboard players operation $temp math %= $three_hundred math
execute if score $temp math matches 0 as @e[type=interaction,tag=airship_crystal_spawn,scores={airship_crystal_growth=..3},limit=1,sort=random] at @s run function mcm:maps/airship/crystals/grow_crystals
execute as @e[type=interaction,tag=airship_crystal_spawn] if score @s airship_crystal_growth matches 3.. at @s run particle minecraft:dust 0.8 0.5 0.9 1.5 ~ ~0.5 ~ 0.05 0.1 0.1 0.5 1 force
execute as @e[type=interaction,tag=airship_crystal_spawn] if score @s airship_crystal_growth matches 3.. on attacker at @s run function mcm:maps/airship/crystals/player_break
execute as @e[type=interaction,tag=airship_crystal_spawn] run data merge entity @s {attack:{player:[I;0,0,0,0],timestamp:0}}
