
tag @e[type=text_display,tag=instruction] add remove

execute at @e[type=text_display,tag=instruction] run summon text_display ~ ~ ~ {Tags:["instruction"]}

execute as @e[type=text_display,tag=instruction] at @s run data modify entity @e[type=text_display,tag=instruction,tag=!remove,distance=..1,limit=1] text set from entity @s text
execute as @e[type=text_display,tag=instruction] at @s run data modify entity @e[type=text_display,tag=instruction,tag=!remove,distance=..1,limit=1] Rotation set from entity @s Rotation
execute as @e[type=text_display,tag=instruction] at @s run data modify entity @e[type=text_display,tag=instruction,tag=!remove,distance=..1,limit=1] billboard set from entity @s billboard

kill @e[type=text_display,tag=instruction,tag=remove]

function mcm:lobby/voting/vote_displays