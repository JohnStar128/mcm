# Event log
execute if entity @s[tag=queued] run function mcm:summary/add_event {translate:"mcm.game.events.invisibility",color:"green",type:1}

effect give @s invisibility 5 1 true

advancement revoke @s only mcm:items/invisibility
