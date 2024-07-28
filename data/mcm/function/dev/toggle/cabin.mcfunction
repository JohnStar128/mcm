
execute if entity @e[type=marker,tag=Cabin, tag=!disabled] run tag @s add toggle_disable

execute if entity @s[tag=toggle_disable] run tag @e[type=marker,tag=Cabin] add disabled
execute unless entity @s[tag=toggle_disable] run tag @e[type=marker,tag=Cabin] remove disabled

function mcm:dev/maptoggle

tellraw @s ""

execute if entity @s[tag=toggle_disable] run tellraw @s {"text":"Cabin disabled", "color":"dark_red"}
execute unless entity @s[tag=toggle_disable] run tellraw @s {"text":"Cabin enabled", "color":"dark_green"}

tellraw @s ""

tag @s remove toggle_disable