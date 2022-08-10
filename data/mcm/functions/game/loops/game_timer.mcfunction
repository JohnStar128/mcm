scoreboard players remove $gametimer CmdData 1

execute if score $gametimer CmdData matches 11999 run tellraw @a ["","\n",{"text":"10 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 10799 run tellraw @a ["","\n",{"text":"9 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 9599 run tellraw @a ["","\n",{"text":"8 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 8399 run tellraw @a ["","\n",{"text":"7 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 7199 run tellraw @a ["","\n",{"text":"6 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 5999 run tellraw @a ["","\n",{"text":"5 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 4800 run tellraw @a ["","\n",{"text":"4 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 3600 run tellraw @a ["","\n",{"text":"3 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 2400 run tellraw @a ["","\n",{"text":"2 minutes remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 1200 run tellraw @a ["","\n",{"text":"1 minute remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 600 run tellraw @a ["","\n",{"text":"30 seconds remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 200 run tellraw @a ["","\n",{"text":"10 seconds remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 100 run tellraw @a ["","\n",{"text":"5 seconds remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 80 run tellraw @a ["","\n",{"text":"4 seconds remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 60 run tellraw @a ["","\n",{"text":"3 seconds remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 40 run tellraw @a ["","\n",{"text":"2 seconds remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 20 run tellraw @a ["","\n",{"text":"1 second remaining!","color":"dark_green"},"\n"]
execute if score $gametimer CmdData matches 0 run tellraw @a ["","\n",{"text":"Innocents have won!","color":"green"},"\n"]
execute if score $gametimer CmdData matches 0 run scoreboard players set $innocentWin CmdData 1
execute if score $gametimer CmdData matches 0 run scoreboard players set $gamestate CmdData 2
