#> Clicking the adrenaline item gives buffs
effect give @s speed 5 3 true
effect give @s jump_boost 5 2 true
tag @s add usedAdrenaline
playsound minecraft:entity.generic.drink block @a ~ ~ ~ 1 1 0
clear @s carrot_on_a_stick{CustomModelData:1113}
scoreboard players reset @s adrenalineClick
scoreboard players reset @s teleporterClick
scoreboard players reset @s knifeRetrieval