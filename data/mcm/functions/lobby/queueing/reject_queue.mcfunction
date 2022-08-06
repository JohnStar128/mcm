execute as @s[scores={deferred_queue=..0}] run tellraw @s ["",{"text":"Sorry, the show's sold out!","color":"red"}]
scoreboard players set @s deferred_queue 1