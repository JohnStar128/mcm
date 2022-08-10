#> "Smart" murderer assignment
execute if score $queued CmdData matches ..7 run scoreboard players set $murderers GameRules 1
execute if score $queued CmdData matches 8..17 run scoreboard players set $murderers GameRules 2
execute if score $queued CmdData matches 18.. run scoreboard players set $murderers GameRules 3