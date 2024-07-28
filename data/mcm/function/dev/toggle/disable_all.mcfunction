
tag @e[type=marker,tag=MapVote] add disabled

function mcm:dev/maptoggle

tellraw @s ""
tellraw @s {"text":"All maps disabled", "color":"dark_red"}
tellraw @s ""