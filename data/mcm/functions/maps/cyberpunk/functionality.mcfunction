#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/cyberpunk] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

#> Keep spectators inbounds
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 5 unless predicate mcm:bounding_boxes/cyberpunk run tp @s @e[type=marker,tag=SpectatorSpawn,limit=1,sort=nearest]
execute as @a[tag=spectating] at @s if score $selectedMap CmdData matches 5 unless predicate mcm:bounding_boxes/cyberpunk run playsound minecraft.entity.shulker.shoot hostile @s ~ ~ ~ 1 1 0

#> Engine animations
scoreboard players operation $temp math = $gametimer CmdData
scoreboard players operation $temp math %= $twelve math

execute if score $temp math matches 0 run place template mcm:engine_topright_1 -2079 82 2023
execute if score $temp math matches 0 run place template mcm:engine_topleft_1 -2079 82 2041
execute if score $temp math matches 0 run place template mcm:engine_bottomright_1 -2053 77 2026
execute if score $temp math matches 0 run place template mcm:engine_bottomleft_1 -2053 77 2040

execute if score $temp math matches 4 run place template mcm:engine_topright_2 -2079 82 2023
execute if score $temp math matches 4 run place template mcm:engine_topleft_2 -2079 82 2041
execute if score $temp math matches 4 run place template mcm:engine_bottomright_2 -2053 77 2026
execute if score $temp math matches 4 run place template mcm:engine_bottomleft_2 -2053 77 2040

execute if score $temp math matches 8 run place template mcm:engine_topright_3 -2079 82 2023
execute if score $temp math matches 8 run place template mcm:engine_topleft_3 -2079 82 2041
execute if score $temp math matches 8 run place template mcm:engine_bottomright_3 -2053 77 2026
execute if score $temp math matches 8 run place template mcm:engine_bottomleft_3 -2053 77 2040

scoreboard players operation $temp math %= $four math
execute if score $temp math matches 3 run setblock -2073 83 2030 air replace
execute if score $temp math matches 3 run setblock -2074 83 2030 air replace
execute if score $temp math matches 3 run setblock -2075 83 2030 air replace
execute if score $temp math matches 3 run setblock -2072 83 2029 air replace
execute if score $temp math matches 3 run setblock -2072 83 2028 air replace
execute if score $temp math matches 3 run setblock -2072 83 2027 air replace
execute if score $temp math matches 3 run setblock -2076 83 2029 air replace
execute if score $temp math matches 3 run setblock -2076 83 2028 air replace
execute if score $temp math matches 3 run setblock -2076 83 2027 air replace
execute if score $temp math matches 3 run setblock -2073 83 2026 air replace
execute if score $temp math matches 3 run setblock -2074 83 2026 air replace
execute if score $temp math matches 3 run setblock -2075 83 2026 air replace

execute if score $temp math matches 3 run setblock -2073 83 2048 air replace
execute if score $temp math matches 3 run setblock -2074 83 2048 air replace
execute if score $temp math matches 3 run setblock -2075 83 2048 air replace
execute if score $temp math matches 3 run setblock -2072 83 2047 air replace
execute if score $temp math matches 3 run setblock -2072 83 2046 air replace
execute if score $temp math matches 3 run setblock -2072 83 2045 air replace
execute if score $temp math matches 3 run setblock -2076 83 2047 air replace
execute if score $temp math matches 3 run setblock -2076 83 2046 air replace
execute if score $temp math matches 3 run setblock -2076 83 2045 air replace
execute if score $temp math matches 3 run setblock -2073 83 2044 air replace
execute if score $temp math matches 3 run setblock -2074 83 2044 air replace
execute if score $temp math matches 3 run setblock -2075 83 2044 air replace

execute if score $temp math matches 3 run setblock -2048 78 2032 air replace
execute if score $temp math matches 3 run setblock -2049 78 2032 air replace
execute if score $temp math matches 3 run setblock -2050 78 2032 air replace
execute if score $temp math matches 3 run setblock -2047 78 2031 air replace
execute if score $temp math matches 3 run setblock -2047 78 2030 air replace
execute if score $temp math matches 3 run setblock -2047 78 2029 air replace
execute if score $temp math matches 3 run setblock -2051 78 2031 air replace
execute if score $temp math matches 3 run setblock -2051 78 2030 air replace
execute if score $temp math matches 3 run setblock -2051 78 2029 air replace
execute if score $temp math matches 3 run setblock -2048 78 2028 air replace
execute if score $temp math matches 3 run setblock -2049 78 2028 air replace
execute if score $temp math matches 3 run setblock -2050 78 2028 air replace

execute if score $temp math matches 3 run setblock -2048 78 2046 air replace
execute if score $temp math matches 3 run setblock -2049 78 2046 air replace
execute if score $temp math matches 3 run setblock -2050 78 2046 air replace
execute if score $temp math matches 3 run setblock -2047 78 2045 air replace
execute if score $temp math matches 3 run setblock -2047 78 2044 air replace
execute if score $temp math matches 3 run setblock -2047 78 2043 air replace
execute if score $temp math matches 3 run setblock -2051 78 2045 air replace
execute if score $temp math matches 3 run setblock -2051 78 2044 air replace
execute if score $temp math matches 3 run setblock -2051 78 2043 air replace
execute if score $temp math matches 3 run setblock -2048 78 2042 air replace
execute if score $temp math matches 3 run setblock -2049 78 2042 air replace
execute if score $temp math matches 3 run setblock -2050 78 2042 air replace

#> Secret stuff
effect give @e[type=villager,tag=cyberpunk_secret] invisibility 999999 1 true
execute as @a[advancements={mcm:map_functions/cyberpunk_secret_1=true}] at @s run scoreboard players set @e[type=villager,tag=cyberpunk_secret,limit=1,sort=nearest] cyberpunk 1
execute if entity @a[advancements={mcm:map_functions/cyberpunk_secret_1=true}] store result score $secret cyberpunk if entity @e[type=villager,tag=cyberpunk_secret,scores={cyberpunk=1..}]

execute if score $secret cyberpunk matches 9 run setblock -1990 73 2044 redstone_torch
execute if score $secret cyberpunk matches 9 run setblock -1989 73 2044 redstone_torch
execute if score $secret cyberpunk matches 9 positioned -1990 76 2046 if block ~ ~ ~ stone_button[powered=true] as @a[tag=!spectating,distance=..5] run tp @s -1994 188 2060
execute if score $secret cyberpunk matches 9 positioned -1994 189 2061 if block ~ ~ ~ warped_button[powered=true] as @a[tag=!spectating,distance=..5] run tp @s -1990 75 2045
execute if score $secret cyberpunk matches 9 run setblock -1990 76 2046 stone_button[face=wall,facing=east,powered=false]
execute if score $secret cyberpunk matches 9 run setblock -1994 189 2061 warped_button[face=wall,facing=east,powered=false]

execute if score $secret cyberpunk matches 9 run scoreboard players add $message cyberpunk 1
execute if score $secret cyberpunk matches 9 if score $message cyberpunk matches 1 run tellraw @a ["",{"text":"The garden is open for visitors!","italic":true,"color":"green"}]

execute as @e[type=cat,tag=cyberpunk_secret_1] at @s if entity @a[distance=..1] run advancement grant @a[distance=..1] only mcm:map_functions/cyberpunk_secret_2
execute as @e[type=cat,tag=cyberpunk_secret_2] at @s if entity @a[distance=..1] run advancement grant @a[distance=..1] only mcm:map_functions/cyberpunk_secret_3

execute as @a[advancements={mcm:map_functions/cyberpunk_secret_1=true}] run advancement revoke @s only mcm:map_functions/cyberpunk_secret_1

execute as @a[scores={cyberpunk=2,RingBell=1..}] run advancement grant @s only mcm:secrets/cyberpunk
scoreboard players reset @a RingBell