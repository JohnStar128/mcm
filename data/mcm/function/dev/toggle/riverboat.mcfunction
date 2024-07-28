
execute if entity @e[type=marker,tag=Riverboat, tag=!disabled] run tag @s add toggle_disable

execute if entity @s[tag=toggle_disable] run tag @e[type=marker,tag=Riverboat] add disabled
execute unless entity @s[tag=toggle_disable] run tag @e[type=marker,tag=Riverboat] remove disabled

function mcm:dev/maptoggle

tellraw @s ""

execute if entity @s[tag=toggle_disable] run tellraw @s {"text":"Riverboat disabled", "color":"dark_red"}
execute unless entity @s[tag=toggle_disable] run tellraw @s {"text":"Riverboat enabled", "color":"dark_green"}

tellraw @s ""

tag @s remove toggle_disable