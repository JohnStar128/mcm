#> Pick a sound
execute store result score $sound CmdData run random value 1..7

#> Basically everywhere
# Creaking sounds
execute as @e[type=marker,tag=sound_marker,tag=cabin_upstairs,limit=1,sort=random] at @s if score $sound CmdData matches 1..2 run playsound minecraft:block.chest.open block @a ~ ~ ~ 0.3 0
execute as @e[type=marker,tag=sound_marker,tag=cabin_upstairs,limit=1,sort=random] at @s if score $sound CmdData matches 2..3 run playsound minecraft:block.chest.open block @a ~ ~ ~ 0.3 2

#> Bookshelf related rooms
execute as @e[type=marker,tag=sound_marker,tag=cabin_library] at @s if score $sound CmdData matches 4 run playsound minecraft:item.book.page_turn ambient @a ~ ~ ~ 0.5 1

#> Outside
execute as @e[type=marker,tag=sound_marker,tag=cabin_outside] at @s run playsound minecraft:entity.breeze.idle_ground ambient @a[tag=freezing] ~ ~ ~ 0.1 0
execute as @e[type=marker,tag=sound_marker,tag=cabin_outside] at @s run playsound minecraft:entity.breeze.idle_air ambient @a[tag=freezing] ~ ~ ~ 0.1 0

#> Inside
execute as @e[type=marker,tag=sound_marker,tag=cabin_window,limit=1,sort=random] at @s run playsound minecraft:entity.breeze.idle_ground block @a ~ ~ ~ 0.3 0

#> Bar/Kitchen
execute as @e[type=marker,tag=sound_marker,tag=cabin_bar] at @s if score $sound CmdData matches 6 run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 0.05 1
execute as @e[type=marker,tag=sound_marker,tag=cabin_bar] at @s if score $sound CmdData matches 7 run playsound minecraft:item.bottle.fill block @a ~ ~ ~ 0.05 1

#> Bathroom dripping
execute as @e[type=marker,tag=sound_marker,tag=cabin_bathroom] at @s if score $sound CmdData matches 8 run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron block @a ~ ~ ~ 0.3 0