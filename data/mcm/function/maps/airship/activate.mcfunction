#> Store beacon UUIDs
execute as @e[type=marker,tag=airship_teleport_beacon] store result score @s playerUUID run data get entity @s UUID[0]

execute store result score $temp vars run data get storage mcm:game_state state.rules.animate
execute if score $temp vars matches 0 run return run scoreboard players reset $temp vars
scoreboard players reset $temp vars

data merge storage mcm:args {animate:{pos:"-649 41 -17",order:0,repeat:130}}
function mcm:util/animate/new_structure_instance {name:"mcm:airship/propeller"}

data merge storage mcm:args {animate:{pos:"-702 39 10",order:0,repeat:650}}
function mcm:util/animate/new_structure_instance {name:"mcm:airship/fan"}
data merge storage mcm:args {animate:{pos:"-677 25 24",order:0,repeat:650}}
function mcm:util/animate/new_structure_instance {name:"mcm:airship/fan"}
data merge storage mcm:args {animate:{pos:"-697 25 9",order:0,repeat:650}}
function mcm:util/animate/new_structure_instance {name:"mcm:airship/fan"}

data merge storage mcm:args {animate:{pos:"-696 51 35",order:0,repeat:325}}
function mcm:util/animate/new_structure_instance {name:"mcm:airship/waterwheel"}

function mcm:util/timer/new {name:"$crystal_growth",start:299,period:300,operation:"remove"}
function mcm:util/timer/new {name:"$wheel",start:79,period:80,operation:"remove"}

execute as @e[type=interaction,tag=airship_crystal_spawn] on passengers run data modify entity @s data merge value {stage:0} 
