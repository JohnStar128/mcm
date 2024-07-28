scoreboard players add @s cyberpunk 1
playsound minecraft:entity.cat.ambient block @s

scoreboard players set $event_type temp 1
function mcm:game/summary/add_event {translate:"mcm.game.events.cyberpunk_cat",color:"green"}