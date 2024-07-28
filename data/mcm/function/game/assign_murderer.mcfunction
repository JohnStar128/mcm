execute as @a[tag=queued,tag=!prevMurderer,tag=!murderer,sort=random,limit=1] run tag @s add murderer 
scoreboard players remove $num_murderers CmdData 1
execute if score $num_murderers CmdData matches 1.. run function mcm:game/assign_murderer