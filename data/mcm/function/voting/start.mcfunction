#> One-time functions run at the start of the voting period

#> Set vote countdown to 400 ticks/20 seconds
function mcm:util/timer/new {name:"$vote_countdown",start:400,period:1,operation:"remove"}
scoreboard players set $vote_countdown_seconds vars 20

#> Reset lobby poster visual (TODO might get reworked later on)
fill 27 5 88 27 1 117 crimson_trapdoor[open=true,facing=west] replace warped_trapdoor

#> Assign voting map slots
kill @e[type=marker,tag=map_vote]
data merge storage mcm:voting {slots: [{name: "random", pos:"27 2 84.0", model:"posters/random"}], \
                               vacant_slots: [{name: "", pos:"28 2 90.0"}, \
                                              {name: "", pos:"28 2 95.0"}, \
                                              {name: "", pos:"28 2 100.0"}, \
                                              {name: "", pos:"28 2 106.0"}, \
                                              {name: "", pos:"28 2 111.0"}, \
                                              {name: "", pos:"28 2 116.0"}, \
                               ]}
function mcm:voting/map_selection

#> Modify lobby bossbar to display the vote countdown
bossbar add vote_countdown ""
bossbar set vote_countdown name {"translate":"mcm.lobby.voteformap","color":"gold", "with":[ {"translate":"mcm.lobby.voteformap.time", "color":"gray", "with":[ {"score":{"name":"$vote_countdown_seconds","objective":"vars"},"bold":true,"color":"yellow"} ] } ]}
bossbar set vote_countdown max 20
bossbar set vote_countdown value 20
bossbar set vote_countdown color yellow
bossbar set vote_countdown style notched_20
# Display the branding bossbar below the countdown 
function mcm:reset_branding

#> Generate a game ID
# Used to tell if a player last logged in during this game or not
kill @e[type=marker, tag=gameID]
summon marker 0 100 0 {Tags:["gameID"]}
execute store result score $gameID gameID run data get entity @e[tag=gameID,limit=1,sort=nearest] UUID[0]
scoreboard players operation @a gameID = $gameID gameID

data merge storage mcm:game_state {state:{current_stage_started:true}}
