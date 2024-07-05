#> Place animation frames
kill @e[type=armor_stand,tag=industry_animated_machine]

$place template mcm:industry_conveyor_1_$(frame) -2047 79 -3025
$place template mcm:industry_conveyor_2_$(frame) -2047 79 -3003
$place template mcm:industry_conveyor_3_$(frame) -2047 79 -2955
$place template mcm:industry_conveyor_4_$(frame) -1999 79 -2950
$place template mcm:industry_conveyor_5_$(frame) -1951 79 -2996
$place template mcm:industry_conveyor_6_$(frame) -1950 79 -3020

#> Conveyor belt sounds
execute as @e[type=marker,tag=sound_marker,tag=conveyor] run playsound minecraft:block.chain.break block @s ~ ~ ~ 2 0.1

# Sadly not everything can be done with macros here
$scoreboard players set $temp math $(frame)

execute if score $temp math matches 3 run setblock -1955 82 -2950 piston_head[facing=up] replace
execute if score $temp math matches 4 run setblock -1955 82 -2948 piston_head[facing=up] replace
execute if score $temp math matches 2 run setblock -1952 79 -2951 gray_concrete_powder replace
execute unless score $temp math matches 2 run setblock -1952 79 -2951 gray_concrete replace

# Extra effects
playsound minecraft:item.axe.wax_off block @a -2039 85 -3013 2 2
playsound minecraft:item.axe.wax_off block @a -2010 84 -2948 2 2
playsound minecraft:item.axe.wax_off block @a -1955 85 -2949 2 2

execute positioned -2038 80 -3010 if block ~ ~ ~ dropper run playsound minecraft:entity.bee.loop_aggressive block @a ~ ~ ~ 1 0.7
execute positioned -2038 80 -3010 if block ~ ~ ~ dropper run particle dust{'color': [0.5, 0.5, 0.5], 'scale': 1.0} ~ ~1 ~ 0.25 0 0.25 .25 5 force
execute positioned -2004 80 -2948 if block ~ ~ ~ piston run particle campfire_cosy_smoke ~ ~ ~ 0.25 0.01 0.25 0.01 15 force
execute positioned -2004 80 -2948 if block ~ ~ ~ piston run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 0.8
execute positioned -1955 80 -2948 if block ~ ~ ~ piston run playsound minecraft:block.wood.place block @a ~ ~ ~ 2 0.5
execute positioned -1949 80 -3004 if block ~ ~ ~ piston run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1 1
