
execute if entity @e[type=marker,tag=Cyberpunk, tag=!disabled] run tag @s add toggle_disable

execute if entity @s[tag=toggle_disable] run tag @e[type=marker,tag=Cyberpunk] add disabled
execute unless entity @s[tag=toggle_disable] run tag @e[type=marker,tag=Cyberpunk] remove disabled

function mcm:dev/maptoggle

tellraw @s ""

execute if entity @s[tag=toggle_disable] run tellraw @s {"text":"Cyberpunk disabled", "color":"dark_red"}
execute unless entity @s[tag=toggle_disable] run tellraw @s {"text":"Cyberpunk enabled", "color":"dark_green"}

tellraw @s ""

tag @s remove toggle_disable