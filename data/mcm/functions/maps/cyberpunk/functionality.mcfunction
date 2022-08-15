#> Teleport players out of bounds back inbounds (escape prevention)
execute as @a[tag=queued,tag=!spectating,predicate=!mcm:bounding_boxes/cyberpunk] at @s run tp @s @e[tag=PlayerSpawn,limit=1,sort=random]

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
