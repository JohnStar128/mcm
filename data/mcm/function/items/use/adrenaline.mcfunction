# Event log
execute if entity @s[tag=queued] run function mcm:summary/add_event {translate:"mcm.game.events.adrenaline",color:"green",type:1}

#> Adrenaline boost
attribute @s movement_speed modifier add mcm:adrenaline 0.2 add_value
attribute @s jump_strength modifier add mcm:adrenaline 0.3 add_value
playsound entity.generic.drink block @a ~ ~ ~ 1 1 0

data merge storage mcm:args {timer:{name:"", start:100, period:101, operation:"remove"}}
execute store result storage mcm:args timer.id int 1 run function mcm:util/next_prng
function mcm:items/cleanup/adrenaline_id with storage mcm:args timer

advancement revoke @s only mcm:items/adrenaline
