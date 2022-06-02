#> development join stuff
execute as @a at @s if score $selectedMap CmdData matches 1 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tag @s add queued
execute as @a at @s if score $selectedMap CmdData matches 2 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tag @s add queued
execute as @a at @s if score $selectedMap CmdData matches 3 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tag @s add queued
execute as @a[nbt={RootVehicle:{Entity:{Tags:["chair"]}}}] at @s run tag @s add queued
#execute as @a[nbt=!{RootVehicle:{}}] at @s run tag @s remove queued
execute as @a[tag=queued] at @s if score $selectedMap CmdData matches 1 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tp @s -5 -60 -11
execute as @a[tag=queued] at @s if score $selectedMap CmdData matches 2 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tp @s 6 -60 -11
execute as @a[tag=queued] at @s if score $selectedMap CmdData matches 3 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tp @s 17 -60 -11

#> Store the current queued players
execute store result score $queued CmdData run execute if entity @e[tag=queued]

#> Probably don't need this anymore
scoreboard players reset @a dead
tag @a[team=!test4] remove innocent
tag @a[team=!test4] remove murderer
tag @a[team=!test4] remove Voted

#> Post-ready pre-game countdown before teleporting to the map
execute if score $queued CmdData matches 3.. if score $start CmdData matches 1.. run scoreboard players remove $startcountdown CmdData 1
execute if score $startcountdown CmdData matches 199 run tellraw @a {"text":"The game begins in 10.."}
execute if score $startcountdown CmdData matches 100 run tellraw @a {"text":"The game begins in 5.."}
execute if score $startcountdown CmdData matches 80 run tellraw @a {"text":"The game begins in 4.."}
execute if score $startcountdown CmdData matches 60 run tellraw @a {"text":"The game begins in 3.."}
execute if score $startcountdown CmdData matches 40 run tellraw @a {"text":"The game begins in 2.."}
execute if score $startcountdown CmdData matches 20 run tellraw @a {"text":"The game begins in 1.."}
# Library
execute if score $startcountdown CmdData matches 1 if score $selectedMap CmdData matches 1 run function mcm:maps/library/start
# Floating Islands
execute if score $startcountdown CmdData matches 1 if score $selectedMap CmdData matches 2 run function mcm:maps/airship/start
# Vineyard
execute if score $startcountdown CmdData matches 1 if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/start