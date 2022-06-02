execute if score $graceperiod CmdData matches ..0 run execute store result score $canSpawnScrap CmdData if predicate mcm:scraprng
execute as @e[tag=PlayerSpawn,limit=1,sort=random] at @s if score $canSpawnScrap CmdData matches 1 run summon item ~ ~ ~ {Tags:["KeyItem"],Item:{id:"minecraft:netherite_scrap",Count:1b,tag:{display:{Name:"{\"text\":\"Scrap\",\"italic\":\"false\"}"}}}} 
execute as @e[tag=PlayerSpawn,limit=1,sort=random] at @s if score $canSpawnScrap CmdData matches 1 run scoreboard players set $canSpawnScrap CmdData 0

execute as @e[tag=ScrapSpawn,limit=1,sort=random] at @s if score $canSpawnScrap CmdData matches 1 run summon item ~ ~ ~ {Tags:["KeyItem"],Item:{id:"minecraft:netherite_scrap",Count:1b,tag:{display:{Name:"{\"text\":\"Scrap\",\"italic\":\"false\"}"}}}} 
execute as @e[tag=ScrapSpawn,limit=1,sort=random] at @s if score $canSpawnScrap CmdData matches 1 run scoreboard players set $canSpawnScrap CmdData 0