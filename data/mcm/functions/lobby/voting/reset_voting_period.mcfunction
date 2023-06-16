
#> Resets the voting period
#> Used when no players are in the map
#> Don't run when a game is running or bad things will happen (probably)


function mcm:lobby/lobby_reset
function mcm:maps/reset

scoreboard players set $gamestate CmdData -1
function mcm:lobby/voting/start
scoreboard players set $gameEndTimer CmdData 200