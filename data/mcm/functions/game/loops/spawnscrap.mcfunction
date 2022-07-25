summon marker 0 0 0 {Tags:["ScrapRNG"]}

scoreboard players set $scrapUpperBound scrapRNG 3

execute as @e[type=marker,tag=ScrapRNG] store result score @s scrapRNG run data get entity @s UUID[0]
execute as @e[type=marker,tag=ScrapRNG] store result score @s scrapRNG run scoreboard players operation @s scrapRNG %= $scrapUpperBound scrapRNG

#execute if score $graceperiod CmdData matches ..0 store result score $canSpawnScrap CmdData run loot spawn 0 -2000 0 loot mcm:scrapchance
execute as @e[type=marker,tag=PlayerSpawn,limit=1,sort=random] at @s if score @e[type=marker,tag=ScrapRNG,limit=1] scrapRNG matches 1 run summon item ~ ~ ~ {Item: {id: "minecraft:netherite_scrap", Count: 1b, tag: {CustomModelData: 1, Tags: ["KeyItem"], display: {Lore: ['[{"translate":"mcm.item.scrap.lore","italic":false}]'], Name: '{"translate":"mcm.item.scrap","italic":"false"}'}}}} 
#execute if score @e[type=marker,tag=ScrapRNG,limit=1] scrapRNG matches 1 run say 1
execute as @e[type=marker,tag=ScrapSpawn,limit=1,sort=random] at @s if score @e[type=marker,tag=ScrapRNG,limit=1] scrapRNG matches 2 run summon item ~ ~ ~ {Item: {id: "minecraft:netherite_scrap", Count: 1b, tag: {CustomModelData: 1, Tags: ["KeyItem"], display: {Lore: ['[{"translate":"mcm.item.scrap.lore","italic":false}]'], Name: '{"translate":"mcm.item.scrap","italic":"false"}'}}}}
#execute if score @e[type=marker,tag=ScrapRNG,limit=1] scrapRNG matches 2 run say 2
execute if score @e[type=marker,tag=ScrapRNG,limit=1] scrapRNG matches 1.. run scoreboard players set $canSpawnScrap CmdData 0

kill @e[type=marker,tag=ScrapRNG]