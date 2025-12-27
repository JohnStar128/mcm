data modify storage mcm:timers list[{name:"$vote_countdown"}].period set value 401

scoreboard players operation $vote_countdown_seconds vars = $vote_countdown timers
scoreboard players operation $vote_countdown_seconds vars /= $twenty math

#> Fancy countdown sounds
execute if score $vote_countdown timers matches 200 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $vote_countdown timers matches 180 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $vote_countdown timers matches 160 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $vote_countdown timers matches 140 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $vote_countdown timers matches 120 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $vote_countdown timers matches 100 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.8
execute if score $vote_countdown timers matches 80 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0.9
execute if score $vote_countdown timers matches 60 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.0
execute if score $vote_countdown timers matches 40 as @a at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1.1
