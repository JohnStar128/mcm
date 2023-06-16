
execute positioned ~0.5 ~2.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:barrier",Count:1b}}
execute positioned ~0.5 ~2.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:barrier",Count:1b}}
execute positioned ~0.5 ~1.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:barrier",Count:1b}}
execute positioned ~0.5 ~1.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:barrier",Count:1b}}
execute positioned ~0.5 ~0.5 ~-0.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:barrier",Count:1b}}
execute positioned ~0.5 ~0.5 ~1.5 as @e[type=glow_item_frame,limit=1,sort=nearest] run data merge entity @s {Item:{id:"minecraft:barrier",Count:1b}}

tag @e[type=text_display,sort=nearest,limit=1] add disabled