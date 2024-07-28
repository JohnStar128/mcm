#> Run from the mcm:chair advancement

advancement revoke @s only mcm:chair

execute as @e[type=interaction,tag=chair] store result score @s playerUUID run data get entity @s interaction.player[0]
execute as @e[type=interaction,tag=chair] run data merge entity @s {interaction:{player:[0,0,0,0], timestamp:0L}}

scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @e[type=interaction,tag=chair,predicate=mcm:matches_uuid] run tag @s add to_sit

#> Don't allow someone to sit on an occupied chair
scoreboard players operation $tempuuid chair_entityUUID = @e[type=interaction,tag=chair,tag=to_sit,limit=1] chair_entityUUID
execute if entity @e[type=interaction,tag=chair_entity,predicate=mcm:chair_entity] run tag @e[type=interaction,tag=chair,tag=to_sit] remove to_sit


#> Summon the chair entity and link it to the base interaction
execute as @e[type=interaction,tag=chair,tag=to_sit] at @s run summon interaction ~ ~ ~ {Tags:["chair_entity","to_sit"],width:0,height:0}
execute as @e[type=interaction,tag=chair_entity,tag=to_sit] store result score @s chair_entityUUID run data get entity @s UUID[0]
scoreboard players operation @e[type=interaction,tag=chair,tag=to_sit,limit=1] chair_entityUUID = @e[type=interaction,tag=chair_entity,tag=to_sit] chair_entityUUID

#> Actually move the player
execute if entity @e[type=interaction,tag=chair_entity,tag=to_sit] run ride @s dismount
execute if entity @e[type=interaction,tag=chair_entity,tag=to_sit] run tag @s add on_chair
ride @s mount @e[type=interaction,tag=chair_entity,tag=to_sit,limit=1]

#> Add tags for other functionality
execute if entity @e[type=interaction,tag=chair,tag=to_sit,tag=queue_chair] run tag @e[type=interaction,tag=chair_entity,tag=to_sit] add queue_chair
execute if entity @e[type=interaction,tag=chair,tag=to_sit,tag=spectatorchair] run tag @e[type=interaction,tag=chair_entity,tag=to_sit] add spectatorchair

tag @e[type=interaction,tag=chair] remove to_sit
tag @e[type=interaction,tag=chair_entity] remove to_sit
