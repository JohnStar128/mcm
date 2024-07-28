#> Periodically reset afk player checks in case people move them
scoreboard players add $afktimer CmdData 1

execute if score $afktimer CmdData matches 100 run scoreboard players reset @a[tag=afk] walk
execute if score $afktimer CmdData matches 100 run scoreboard players reset @a[tag=afk] sprint
execute if score $afktimer CmdData matches 100 run scoreboard players reset @a[tag=afk] crouch
execute if score $afktimer CmdData matches 100 run scoreboard players reset @a[tag=afk] jump
execute if score $afktimer CmdData matches 100 run scoreboard players reset $afktimer CmdData
