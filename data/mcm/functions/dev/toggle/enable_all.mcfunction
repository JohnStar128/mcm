
tag @e[type=marker,tag=MapVote] remove disabled

function mcm:dev/maptoggle

tellraw @s ""
tellraw @s {"text":"All maps enabled", "color":"dark_green"}
tellraw @s ""