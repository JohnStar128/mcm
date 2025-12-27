#> Start of the voting period, reset posters and bossbars
execute unless data storage mcm:game_state state.current_stage_started run function mcm:voting/start

#> Check for updates to the available maps and reshuffle if necessary
execute as @e[type=interaction, tag=vote_interaction] on passengers run function mcm:voting/check_enabled with entity @s data
scoreboard players reset $active vars

#> Start the countdown if someone has voted
execute if entity @a[scores={map_vote=0..}] run function mcm:voting/countdown

#> Update bossbar
bossbar set vote_countdown players @a
bossbar set vote_countdown name {translate:"mcm.lobby.voteformap",color:"gold", with:[ {translate:"mcm.lobby.voteformap.time", color:"gray", with:[ {score:{name:"$vote_countdown_seconds",objective:"vars"},bold:true,color:"yellow"} ] } ]}
execute store result bossbar vote_countdown value run scoreboard players get $vote_countdown_seconds vars

#> End of the voting period, select map and reset variables
execute if score $vote_countdown timers matches ..0 run function mcm:voting/reset
