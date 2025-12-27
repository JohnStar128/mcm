$execute as @s at @s run spreadplayers ~ ~ 0 3 under $(scrapY) false @e[type=item,tag=scrap,limit=1,sort=nearest]

execute as @e[type=marker,tag=scrap_chose,limit=1] run tag @s remove scrap_chose
scoreboard players reset $scrapY vars