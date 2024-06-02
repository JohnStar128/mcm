clear @s
function mcm:cosmetics/change_cosmetics
tag @s add queued
team join ingame_players @s
tellraw @a[tag=queued] {"translate":"mcm.game.latejoin", "color":"green", "italic":false, "bold":false, "with":[{"selector":"@s", "color":"green"}]}
gamemode adventure @s
tp @s @e[type=marker,tag=PlayerSpawn,sort=random,limit=1]
