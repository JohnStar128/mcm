#> Fancy countdown sounds
execute if score $countdown CmdData matches 5..9 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $countdown CmdData matches 4 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.9
execute if score $countdown CmdData matches 3 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.0
execute if score $countdown CmdData matches 2 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.1

execute if score $countdown CmdData matches 1 run function mcm:lobby/voting/end

#> Remove 1 from countdown, reset countSec
scoreboard players remove $countdown CmdData 1
scoreboard players set $countSec CmdData 0
