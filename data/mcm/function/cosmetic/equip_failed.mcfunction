# Runs when the player can't equip the cosmetic
tellraw @s {"translate":"mcm.cosmetic.cannot.equip","color":"red"}
execute at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0
return fail
