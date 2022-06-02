particle crit ~ ~ ~ 0 0 0 0 1
execute as @e[dx=0] positioned ~-0.77 ~-0.77 ~-0.77 if entity @s[dx=0] run function mcm:game/items/knifehit

execute positioned ^ ^ ^1 if block ~ ~ ~ air run function mcm:game/loops/kniferay
execute positioned ^ ^ ^1 unless block ~ ~ ~ air run scoreboard players reset @s knifeclick