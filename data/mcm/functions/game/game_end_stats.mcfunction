#> Header
execute if score $innocentWin CmdData matches 1 run tellraw @a ["", {"text":"|","color":"gray","bold":true},{"text":" ----- ","color":"green"},{"text":"Winning team: ","color":"gold"},{"text":"Innocents","color":"dark_aqua"},{"text":" ----- ","color":"green"}]
execute if score $murderWin CmdData matches 1 run tellraw @a ["", {"text":"|","color":"gray","bold":true},{"text":" ----- ","color":"green"},{"text":"Winning team: ","color":"gold"},{"text":"Murderers","color":"red"},{"text":" ----- ","color":"green"}]

#> Print murderers
tellraw @a ["", {"text":"|","color":"gray","bold":true}, {"text":" Murderers this round:","color":"red"}]
execute as @a[tag=murderer] run tellraw @a ["", {"text":"| ","color":"gray","bold":true}, {"selector":"@s","color":"red"}, {"text":" - kills: ", "color":"gold"}, {"score":{"objective":"game_stats", "name":"@s"}, "color":"gold"}]

#> Separator
tellraw @a ["", {"text":"|","color":"gray","bold":true}]

#> Gunner kills
tellraw @a ["", {"text":"|","color":"gray","bold":true}, {"text":" Gunners this round:","color":"dark_aqua"}]
execute as @a[tag=gunner_stat] run tellraw @a ["", {"text":"| ","color":"gray","bold":true}, {"selector":"@s","color":"dark_aqua"}, {"text":" - kills: ", "color":"gold"}, {"score":{"objective":"game_stats", "name":"@s"}, "color":"gold"}]

#> Separator
tellraw @a ["", {"text":"|","color":"gray","bold":true}]

#> Survivors
tellraw @a ["", {"text":"|","color":"gray","bold":true}, {"text":" Survivors:","color":"green"}]
#execute as @a[tag=queued,tag=!spectating] run tellraw @a ["", {"text":"| ","color":"gray","bold":true}, {"selector":"@s","color":"green"}]
execute as @a[tag=queued,tag=!spectating] run function mcm:game/display_time_alive

#> Separator
tellraw @a ["", {"text":"|","color":"gray","bold":true}]

#> Time alive
tellraw @a ["", {"text":"|","color":"gray","bold":true}, {"text":" Time alive:","color":"dark_purple"}]
execute as @a[tag=queued,tag=spectating] run function mcm:game/display_time_alive

#> Footer
tellraw @a ["", {"text":"|","color":"gray","bold":true},{"text":" ------------------------------- ","color":"green"}]