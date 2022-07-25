##Blatantly stolen from Meteor Miners but it works
scoreboard players remove @e[type=marker,tag=MapVote] CmdData 1
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=1024..}] run scoreboard players remove @e[type=marker,tag=MapVote,scores={CmdData=1024..}] CmdData 1024
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=512..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 512
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=256..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 256
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=128..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 128
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=64..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 64
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=32..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 32
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=16..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 16
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=8..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 8
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=4..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 4
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=2..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 2
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=1..}] run scoreboard players remove @e[type=marker,tag=MapVote] CmdData 1
execute if entity @e[type=marker,tag=MapVote,scores={CmdData=1..}] run function mcm:lobby/map_poggercalculation

#tellraw @a {"text":"score: ","extra":[{"score":{"name":"@e[type=marker,tag=MapVote]","objective":"CmdData"}}]}