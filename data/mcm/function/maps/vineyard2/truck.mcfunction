#> Function for moving the truck forward 1 block
kill @e[type=item_frame,tag=vineyard_truck]
kill @e[type=interaction,tag=vineyard_truck]
fill ~ ~ ~-1 ~4 ~2 ~-1 air replace
fill ~1 ~3 ~1 ~3 ~3 ~3 air replace
place template mcm:vineyard_truck ~ ~ ~
tp @s ~2 ~1.5 ~7.5
playsound minecraft:block.anvil.place block @a ~2 ~2 ~10 1 1
execute positioned ~2 ~ ~11 if entity @a[tag=!spectating,distance=..1.5] if entity @s[tag=murderer] run data modify storage mcm:game_summary temp.player2_color set value "red"
execute positioned ~2 ~ ~11 if entity @a[tag=!spectating,distance=..1.5] if entity @s[tag=gunner_stat] run data modify storage mcm:game_summary temp.player2_color set value "dark_aqua"
execute positioned ~2 ~ ~11 if entity @a[tag=!spectating,distance=..1.5] if entity @s[tag=innocent,tag=!gunner_stat] run data modify storage mcm:game_summary temp.player2_color set value "light_purple"
execute positioned ~2 ~ ~11 if entity @a[tag=!spectating,distance=..1.5] run playsound minecraft:block.anvil.land block @a ~ ~ ~ 1 0.5
execute positioned ~2 ~ ~11 if entity @a[tag=!spectating,distance=..1.5] run function mcm:util/get_player_name {out:"storage mcm:game_summary temp.player2_text"}
execute positioned ~2 ~ ~11 if entity @a[tag=!spectating,distance=..1.5] run scoreboard players set $event_type temp 3
execute positioned ~2 ~ ~11 as @a[tag=!spectating,distance=..1.5] run function mcm:game/summary/add_event {translate:"mcm.game.events.killed_by_truck",color:"green"}
execute positioned ~2 ~ ~11 as @a[tag=!spectating,distance=..1.5] run function mcm:game/playerdeath

clear @s tripwire_hook
