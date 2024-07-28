
#> Murderer Items
execute as @a[scores={carrot=1..},nbt={SelectedItem:{tag:{murderer:1b}}}] at @s run function mcm:game/items/murderer_items




scoreboard players remove @a[tag=invisible] invisibility 1

effect clear @a[tag=invisible,scores={invisibility=..0}] invisibility
execute as @a[tag=invisible,scores={invisibility=..0}] run function mcm:cosmetics/change_cosmetics
tag @a[tag=invisible,scores={invisibility=..0}] remove invisible
scoreboard players reset @a[scores={invisibility=..0}] invisibility