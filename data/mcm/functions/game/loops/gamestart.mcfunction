#> development join stuff
# Legacy
execute as @a at @s if score $selectedMap CmdData matches 1 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tag @s add queued
execute as @a at @s if score $selectedMap CmdData matches 2 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tag @s add queued
execute as @a at @s if score $selectedMap CmdData matches 3 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tag @s add queued
# New stuff
execute as @a[nbt={RootVehicle:{Entity:{Tags:["chair"]}}},tag=!queued] at @s run tellraw @a ["", {"selector":"@s","color":"green"},{"text":" is ready to play!"}]
execute as @a[nbt={RootVehicle:{Entity:{Tags:["chair"]}}},tag=!queued] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:69,display:{Name:'[{"text":"3","italic":false,"bold":true,"color":"red"},{"text":"D","color":"blue"},{"text":" ","color":"blue","bold":false},{"text":"Glasses","color":"white","bold":false}]',Lore:['[{"text":"You are Ready to play!","italic":false,"color":"green","underlined":true},{"text":"","italic":false,"color":"dark_purple","underlined":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"This is so immersive!","italic":true,"color":"dark_gray"}]','[{"text":"It almost feels like","italic":true,"color":"dark_gray"}]','[{"text":"you\'re actually there!","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:127}
execute as @a[nbt={RootVehicle:{Entity:{Tags:["chair"]}}},tag=!queued] at @s run tag @s add queued

execute as @a[predicate=!mcm:bounding_boxes/queue_area,tag=queued] at @s run tellraw @a ["", {"selector":"@s","color":"green"},{"text":" has left the theater!"}]
execute as @a[predicate=!mcm:bounding_boxes/queue_area,tag=queued] at @s run item replace entity @s armor.head with air
execute as @a[predicate=!mcm:bounding_boxes/queue_area,tag=queued] at @s run tag @s remove queued


#> Make sure no one died in lobby for some reason
scoreboard players reset @a dead

#execute as @a[tag=queued] at @s if score $selectedMap CmdData matches 1 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tp @s -5 -60 -11
#execute as @a[tag=queued] at @s if score $selectedMap CmdData matches 2 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tp @s 6 -60 -11
#execute as @a[tag=queued] at @s if score $selectedMap CmdData matches 3 if entity @s[predicate=mcm:bounding_boxes/join_pad] run tp @s 17 -60 -11

#> Store the current queued players
execute store result score $queued CmdData run execute if entity @e[tag=queued]

#> Probably don't need this anymore
#scoreboard players reset @a dead
#tag @a[team=!test4] remove innocent
#tag @a[team=!test4] remove gunner
#tag @a[team=!test4] remove murderer
#tag @a[team=!test4] remove Voted

#> Post-ready pre-game countdown before teleporting to the map
execute if score $queued CmdData matches 3.. if score $start CmdData matches 1.. run scoreboard players remove $startcountdown CmdData 1
execute if score $startcountdown CmdData matches 199 run tellraw @a {"text":"The game begins in 10.."}
execute if score $startcountdown CmdData matches 112 run playsound minecraft:movie_start record @a ~ ~ ~ 1 1 1
execute if score $startcountdown CmdData matches 100 run tellraw @a {"text":"The game begins in 5.."}
execute if score $startcountdown CmdData matches 80 run tellraw @a {"text":"The game begins in 4.."}
execute if score $startcountdown CmdData matches 60 run tellraw @a {"text":"The game begins in 3.."}
execute if score $startcountdown CmdData matches 40 run tellraw @a {"text":"The game begins in 2.."}
execute if score $startcountdown CmdData matches 20 run tellraw @a {"text":"The game begins in 1.."}
execute if score $startcountdown CmdData matches 1 run clear @a warped_fungus_on_a_stick{CustomModelData:1114}
execute if score $startcountdown CmdData matches 1 run clear @a diamond_hoe{CustomModelData:69}
# Library
execute if score $startcountdown CmdData matches 1 if score $selectedMap CmdData matches 1 run function mcm:maps/library/start
# Floating Islands
execute if score $startcountdown CmdData matches 1 if score $selectedMap CmdData matches 2 run function mcm:maps/airship/start
# Vineyard
execute if score $startcountdown CmdData matches 1 if score $selectedMap CmdData matches 3 run function mcm:maps/vineyard/start