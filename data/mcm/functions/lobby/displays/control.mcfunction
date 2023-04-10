#> Needs player as sender
execute as @a[tag=display_scroll_lock] run function mcm:lobby/displays/player_update
execute as @e[type=interaction,tag=lobby_cosmetic_displays,nbt=!{interaction:{player:[I;0,0,0,0]}},sort=nearest,limit=1] run function mcm:lobby/displays/interaction
execute as @e[type=interaction,scores={cosmetic_ids=0}] at @s run particle minecraft:dust 1 1 1 1.5 ~ ~0.25 ~ 0.1 0.1 0.1 0.5 1 force