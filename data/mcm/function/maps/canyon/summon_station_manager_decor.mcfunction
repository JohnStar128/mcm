# summon_station_manager_decor.mcfunction
# Resummon station manager office decor

kill @e[tag=station_manager_decor]

execute positioned 2919 3 2949 run summon item_display ~ ~ ~-0.2 {item:{id:paper,Count:1b},transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f],Rotation:[-40f,-90f],Tags:["station_manager_decor"]}
