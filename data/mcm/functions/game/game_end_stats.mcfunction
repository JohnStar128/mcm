#> Header
execute if score $innocentWin CmdData matches 1 run tellraw @a [{"text":"|","color":"gray","bold":true},{"text":" ----- ","color":"green"},{"translate":"mcm.game.stats.won","color":"gold","bold":false,"with":[{"translate":"mcm.game.stats.won.innocents","color":"dark_aqua"}]},{"text":" ----- ","color":"green"}]
execute if score $murderWin CmdData matches 1 run tellraw @a [{"text":"|","color":"gray","bold":true},{"text":" ----- ","color":"green"},{"translate":"mcm.game.stats.won","color":"gold","bold":false,"with":[{"translate":"mcm.game.stats.won.murderers","color":"red"}]},{"text":" ----- ","color":"green"}]

#> Print murderers
tellraw @a [{"text":"|","color":"gray","bold":true}, " ",{"translate":"mcm.game.stats.murderers","color":"red","bold":false}]
execute as @a[tag=murderer] run tellraw @a [{"text":"| ","color":"gray","bold":true}, {"translate":"mcm.game.stats.kills","color":"gold","bold":false,"with":[{"selector":"@s","color":"red"},{"score":{"objective":"game_stats", "name":"@s"}, "color":"gold"}]}]

#> Separator
tellraw @a [{"text":"|","color":"gray","bold":true}]

#> Gunner kills
tellraw @a [{"text":"|","color":"gray","bold":true}, " ",{"translate":"mcm.game.stats.gunners","color":"dark_aqua","bold":false}]
execute as @a[tag=gunner_stat] run tellraw @a [{"text":"| ","color":"gray","bold":true}, {"translate":"mcm.game.stats.kills","color":"gold","bold":false,"with":[{"selector":"@s","color":"dark_aqua"},{"score":{"objective":"game_stats", "name":"@s"}, "color":"gold"}]}]

#> Separator
tellraw @a [{"text":"|","color":"gray","bold":true}]

#> Survivors
tellraw @a [{"text":"|","color":"gray","bold":true}, " ", {"translate":"mcm.game.stats.survivors","color":"green","bold":false}]
#execute as @a[tag=queued,tag=!spectating] run tellraw @a ["", {"text":"| ","color":"gray","bold":true}, {"selector":"@s","color":"green"}]
execute as @a[tag=queued,tag=!spectating] run function mcm:game/display_time_alive

#> Separator
tellraw @a [{"text":"|","color":"gray","bold":true}]

#> Time alive
tellraw @a [{"text":"|","color":"gray","bold":true}, " ", {"translate":"mcm.game.stats.timealive","color":"dark_purple","bold":false}]
execute as @a[tag=queued,tag=spectating] run function mcm:game/display_time_alive

#> Footer
tellraw @a [{"text":"|","color":"gray","bold":true},{"text":" ------------------------------- ","color":"green"}]