#> Animations
scoreboard players add $industry_timer CmdData 1
scoreboard players operation $industry_timer CmdData %= $two_hundred math

scoreboard players operation $temp math = $industry_timer CmdData
scoreboard players operation $temp math /= $fifty math
execute store result storage mcm:industry frame int 1 run scoreboard players add $temp math 1

scoreboard players operation $temp math = $industry_timer CmdData
scoreboard players operation $temp math %= $fifty math
execute if score $temp math matches 0 if score $animate GameRules matches 1 run function mcm:maps/industry/animate with storage mcm:industry

#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/industry] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Forklift questions
execute as @e[type=interaction,tag=forklifttest] if predicate mcm:soundrng at @s run particle firework ~ ~1.25 ~ 0 0.01 0 0.01 3 force
execute as @a[advancements={mcm:map_functions/industry_forklift_test=true}] run function mcm:maps/industry/forklifttest

#> When test is finished, allow license pickup
execute as @a[scores={forklifttest=5}] run function mcm:industry/forkliftlicenseprinter

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 7 unless predicate mcm:bounding_boxes/industry run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 7 unless predicate mcm:bounding_boxes/industry run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0


#> Door closing
# Door 1
execute if block -2005 88 -3028 lever[powered=false] if score $industry_door_1 CmdData matches 1.. run scoreboard players remove $industry_door_1 CmdData 1
execute if block -2005 88 -3028 lever[powered=true] if score $industry_door_1 CmdData matches ..40 run scoreboard players add $industry_door_1 CmdData 1
execute if score $industry_door_1 CmdData matches 10 run clone -2091 95 -3061 -2087 92 -3061 -2047 81 -3002
execute if score $industry_door_1 CmdData matches 20 run clone -2085 95 -3061 -2081 92 -3061 -2047 81 -3002
execute if score $industry_door_1 CmdData matches 30 run clone -2079 95 -3061 -2075 92 -3061 -2047 81 -3002
execute if score $industry_door_1 CmdData matches 40 run clone -2073 95 -3061 -2069 92 -3061 -2047 81 -3002

# Door 2
execute if block -2005 87 -3027 lever[powered=false] if score $industry_door_2 CmdData matches 1.. run scoreboard players remove $industry_door_2 CmdData 1
execute if block -2005 87 -3027 lever[powered=true] if score $industry_door_2 CmdData matches ..40 run scoreboard players add $industry_door_2 CmdData 1
execute if score $industry_door_2 CmdData matches 10 run clone -2068 95 -3042 -2068 92 -3038 -2025 81 -2950
execute if score $industry_door_2 CmdData matches 20 run clone -2068 95 -3048 -2068 92 -3044 -2025 81 -2950
execute if score $industry_door_2 CmdData matches 30 run clone -2068 95 -3054 -2068 92 -3050 -2025 81 -2950
execute if score $industry_door_2 CmdData matches 40 run clone -2068 95 -3060 -2068 92 -3056 -2025 81 -2950

# Door 3
execute if block -2005 88 -3026 lever[powered=false] if score $industry_door_3 CmdData matches 1.. run scoreboard players remove $industry_door_3 CmdData 1
execute if block -2005 88 -3026 lever[powered=true] if score $industry_door_3 CmdData matches ..30 run scoreboard players add $industry_door_3 CmdData 1
#execute if score $industry_door_3 CmdData matches 10 run clone -2068 95 -3042 -2068 92 -3038 -1977 81 -2950
execute if score $industry_door_3 CmdData matches 10 run clone -2068 95 -3048 -2068 92 -3044 -1977 81 -2950
execute if score $industry_door_3 CmdData matches 20 run clone -2068 95 -3054 -2068 92 -3050 -1977 81 -2950
execute if score $industry_door_3 CmdData matches 30 run clone -2068 95 -3060 -2068 92 -3056 -1977 81 -2950

# Door 4
execute if block -2005 87 -3025 lever[powered=false] if score $industry_door_4 CmdData matches 1.. run scoreboard players remove $industry_door_4 CmdData 1
execute if block -2005 87 -3025 lever[powered=true] if score $industry_door_4 CmdData matches ..40 run scoreboard players add $industry_door_4 CmdData 1
execute if score $industry_door_4 CmdData matches 10 run clone -2091 95 -3061 -2087 92 -3061 -1951 81 -2965
execute if score $industry_door_4 CmdData matches 20 run clone -2085 95 -3061 -2081 92 -3061 -1951 81 -2965
execute if score $industry_door_4 CmdData matches 30 run clone -2079 95 -3061 -2075 92 -3061 -1951 81 -2965
execute if score $industry_door_4 CmdData matches 40 run clone -2073 95 -3061 -2069 92 -3061 -1951 81 -2965

# Door 5
execute if block -2005 88 -3024 lever[powered=false] if score $industry_door_5 CmdData matches 1.. run scoreboard players remove $industry_door_5 CmdData 1
execute if block -2005 88 -3024 lever[powered=true] if score $industry_door_5 CmdData matches ..40 run scoreboard players add $industry_door_5 CmdData 1
execute if score $industry_door_5 CmdData matches 10 run clone -2091 95 -3061 -2087 92 -3061 -1951 81 -2991
execute if score $industry_door_5 CmdData matches 20 run clone -2085 95 -3061 -2081 92 -3061 -1951 81 -2991
execute if score $industry_door_5 CmdData matches 30 run clone -2079 95 -3061 -2075 92 -3061 -1951 81 -2991
execute if score $industry_door_5 CmdData matches 40 run clone -2073 95 -3061 -2069 92 -3061 -1951 81 -2991

# Emergency open on doors 3 and 4
execute if block -1975 81 -2951 mangrove_button[powered=true] run setblock -2005 88 -3026 lever[powered=false,facing=west]

execute if block -1952 81 -2963 mangrove_button[powered=true] run setblock -2005 87 -3025 lever[powered=false,facing=west]
execute if block -1952 81 -2967 mangrove_button[powered=true] run setblock -2005 87 -3025 lever[powered=false,facing=west]
