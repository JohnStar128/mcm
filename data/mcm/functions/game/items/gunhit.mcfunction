#> Test command
effect give @s glowing 1 1 true
#> Cosmetic stuff
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 0 1
#> Kill the victim
scoreboard players set @s dead 1
tellraw @s {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[tag=shotGun]","color":"red"}]}
#scoreboard players reset @a gunclick

#> If they shot an innocent, do some stuff
execute if entity @s[tag=innocent] run function mcm:game/innocentshot