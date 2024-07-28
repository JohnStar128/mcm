#>Try allowing players to access the secret
setblock 2972 -27 3045 stone_button[powered=false,face=floor,facing=east]
setblock 2956 -26 3044 stone_button[powered=false,face=floor,facing=north]
execute unless score $canyon_tnt CmdData matches 5 if score $canyon_partition CmdData matches 1 positioned 2972 -27 3045 run tellraw @a[distance=..5] ["",{"translate":"mcm.canyon.explode_tnt.fail","italics":false,"bold":false,"color":"red"}]
execute unless score $canyon_tnt CmdData matches 5 if score $canyon_partition CmdData matches 2 positioned 2956 -26 3044 run tellraw @a[distance=..5] ["",{"translate":"mcm.canyon.explode_tnt.fail","italics":false,"bold":false,"color":"red"}]
execute unless score $canyon_tnt CmdData matches 5 run return fail

scoreboard players set $canyon_enable_countdown CmdData 1
execute if score $canyon_partition CmdData matches 1 positioned 2971 -28 3045 run particle flame ~ ~ ~ 0.05 0.5 0.05 0.01 100 force
execute if score $canyon_partition CmdData matches 2 positioned 2957 -27 3044 run particle flame ~ ~ ~ 0.05 0.5 0.05 0.01 100 force
kill @e[type=interaction,tag=canyon_place_tnt_interaction]
