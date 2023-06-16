#> Set start to 1 only if game is ready to start
execute if score $queued CmdData matches 4.. if score $gamestate CmdData matches 0 run scoreboard players set $start CmdData 1

#> Don't start if not enough players are queued
execute if score $queued CmdData matches ..3 run tellraw @s ["\n", {"text":"Usher: ","color":"dark_green"},{"text":"Not enough players ready to start the movie!","color":"green"}, "\n"]
execute if score $queued CmdData matches ..3 at @s run playsound minecraft:entity.villager.no neutral @s ~ ~ ~ 1 1 0
execute if score $queued CmdData matches ..3 unless score $startcountdown CmdData matches ..200 run scoreboard players set $start CmdData 0

#> Normal Start
execute if score $queued CmdData matches 4.. run scoreboard players set $start CmdData 1
execute if score $start CmdData matches 1.. run scoreboard players remove $startcountdown CmdData 1
execute if score $startcountdown CmdData matches 199 run tellraw @a {"text":"The game begins in 10.."}
execute if score $startcountdown CmdData matches 199 run playsound minecraft:entity.villager.yes neutral @s ~ ~ ~ 1 1 0
execute if score $startcountdown CmdData matches 112 as @a run playsound minecraft:movie_start record @s ~ ~ ~ 1 1 1
execute if score $startcountdown CmdData matches 0..100 positioned -28 -2 93 run function mcm:game/loops/screen
execute if score $startcountdown CmdData matches 100 run tellraw @a {"text":"The game begins in 5.."}
execute if score $startcountdown CmdData matches 80 run tellraw @a {"text":"The game begins in 4.."}
execute if score $startcountdown CmdData matches 60 run tellraw @a {"text":"The game begins in 3.."}
execute if score $startcountdown CmdData matches 40 run tellraw @a {"text":"The game begins in 2.."}
execute if score $startcountdown CmdData matches 20 run tellraw @a {"text":"The game begins in 1.."}

#> Interrupt start if players dequeue
execute if score $startcountdown CmdData matches 1 if score $queued CmdData matches ..2 run tellraw @a ["\n", {"text":"Not enough players queued!","color":"red"}, "\n"]
execute if score $startcountdown CmdData matches 1 if score $queued CmdData matches ..2 run scoreboard players set $start CmdData 0
execute if score $startcountdown CmdData matches 1 if score $queued CmdData matches ..2 run scoreboard players set $startcountdown CmdData 200

#> Clear lobby items if game starts
execute if score $startcountdown CmdData matches 1 run clear @a[tag=queued]

#> Kill any items to stop lobby items being smuggled into a game
execute if score $startcountdown CmdData matches 1 run kill @e[type=item]

#> Update murderer count from queued players if smart murderer selection is on
execute if score $smart_murderers GameRules matches 1 run function mcm:game/rules/smart_murderer_update

#> Set the game timer
execute if score $startcountdown CmdData matches 1 run scoreboard players set $gametimer CmdData 1200
execute if score $startcountdown CmdData matches 1 run scoreboard players operation $gametimer CmdData *= $roundtimer GameRules
execute if score $startcountdown CmdData matches 1 run scoreboard players operation $gametimer CmdData += $three_hundred math

#> Start the game
execute if score $queued CmdData matches 3.. if score $startcountdown CmdData matches 1 run function mcm:game/createbossbar
execute if score $queued CmdData matches 3.. if score $startcountdown CmdData matches 1 run function mcm:maps/start

#> Give players their hats back if they were replaced
execute if score $startcountdown CmdData matches 1 as @a[tag=queued] run function mcm:cosmetics/change_cosmetics

#> Print rules
execute if score $queued CmdData matches 3.. if score $startcountdown CmdData matches 1 as @a run function mcm:game/rules/print_game_rules

execute if score $startcountdown CmdData matches 1 run scoreboard players set @s deferred_queue 0

execute if score $startcountdown CmdData matches 1 as @a store result score @s playerUUID run data get entity @s UUID[0]

#> Regive lobby items to not ingame players
execute if score $startcountdown CmdData matches 1 as @a[tag=!queued] run function mcm:lobby/give_lobby_items
