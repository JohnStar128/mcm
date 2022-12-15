#assume already invisible if they need to be
execute as @e[type=armor_stand,distance=..200] run data merge entity @s {DisabledSlots:16383, Invulnerable:1b}
execute as @e[type=item_frame,distance=..200] run data merge entity @s {Fixed:1b, Invulnerable:1b}
execute as @e[type=glow_item_frame,distance=..200] run data merge entity @s {Fixed:1b, Invulnerable:1b}
execute as @e[type=painting,distance=..200] run data merge entity @s {Invulnerable:1b}