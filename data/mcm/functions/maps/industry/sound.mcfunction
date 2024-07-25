#> Pipes
execute as @e[type=marker,tag=sound_marker,tag=pipe,limit=1,sort=random] run tag @s add active_sound
execute as @e[type=marker,tag=sound_marker,tag=active_sound] at @s run playsound minecraft:block.fire.extinguish block @a -2004 80 -2948 1 0.8 
execute as @e[type=marker,tag=sound_marker,tag=active_sound] at @s run particle campfire_cosy_smoke ~ ~ ~ 0.25 0.01 0.25 0.01 15 force
execute as @e[type=marker,tag=sound_marker,tag=active_sound] run tag @s remove active_sound

#> Keyboard clacking in office areas
execute as @e[type=marker,tag=sound_marker,tag=keyboard,limit=1,sort=random] at @s run playsound minecraft:block.comparator.click block @a[tag=queued] ~ ~ ~ 1.5 2

#> Water Cooler
execute positioned -2010 86 -2985 run playsound minecraft:block.bubble_column.upwards_ambient block @a[tag=queued] ~ ~ ~ 1 0.5
