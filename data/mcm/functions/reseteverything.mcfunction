# Probably a temporary function 'til things're more fleshed out ~John

# Reset marker's tags
tag @e[tag=Brain] add LobbyPeriod
tag @e[tag=Brain] remove votingStart

# Reset scores
scoreboard players set $tick CmdData 0
scoreboard players set $displaySec 30
scoreboard players set $gamestate CmdData -1
function mcm:lobby/startvote