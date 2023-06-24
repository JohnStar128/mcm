#> Give crystal
execute store result score $temp math run clear @s carrot_on_a_stick{CustomModelData:1114} 0
execute if score $temp math matches 1.. run tellraw @s ["", {"text":"| ","bold":true,"color":"dark_gray"},{"translate":"mcm.airship.crystal.heavy","underlined":false,"color":"red"}]
execute if score $temp math matches 0 run give @s carrot_on_a_stick{CustomModelData:1114,NoDrop:1b,display:{Name:'{"translate":"item.minecraft.amethyst_shard","italic":false}'}}
execute if score $temp math matches 0 at @e[type=interaction,tag=airship_crystal_spawn,limit=1,sort=nearest] run setblock ~ ~ ~ air destroy
#  probably don't need this
#execute if score $temp math matches 0 at @e[type=interaction,tag=airship_crystal_spawn,limit=1,sort=nearest] run particle minecraft:dust 0.8 0.5 0.9 1.5 ~ ~0.25 ~ 0.1 0.1 0.1 0.5 20 force

#> Remove interactor and reset score
execute if score $temp math matches 0 as @e[type=interaction,tag=airship_crystal_spawn,limit=1,sort=nearest] run scoreboard players set @s airship_crystal_growth 0
