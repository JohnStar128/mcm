summon marker 0 0 0 {Tags:["ScrapRNG"]}

scoreboard players set $scrapUpperBound scrapRNG 3

execute as @e[type=marker,tag=ScrapRNG] store result score @s scrapRNG run data get entity @s UUID[0]
execute as @e[type=marker,tag=ScrapRNG] store result score @s scrapRNG run scoreboard players operation @s scrapRNG %= $scrapUpperBound scrapRNG


#> Only spawn scrap 2/3 of the time (Remenant of old stuff idk if this is still needed [muk])
execute as @e[type=marker,tag=ScrapSpawn,limit=1,sort=random] at @s if score @e[type=marker,tag=ScrapRNG,limit=1] scrapRNG matches 1.. run summon item ~ ~ ~ {Item: {id: "minecraft:netherite_scrap", Count: 1b, tag: {CustomModelData: 1, Tags: ["KeyItem"], display: {Lore: ['[{"translate":"mcm.item.scrap.lore","italic":false}]'], Name: '{"translate":"mcm.item.scrap","italic":"false"}'}}}} 

execute if score @e[type=marker,tag=ScrapRNG,limit=1] scrapRNG matches 1.. run scoreboard players set $canSpawnScrap CmdData 0

kill @e[type=marker,tag=ScrapRNG]