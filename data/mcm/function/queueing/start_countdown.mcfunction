#> This runs once after we have verified the game can start
function mcm:util/timer/new {name:"$start_countdown",start:200,period:201,operation:"remove"}


# Queue up the curtain animation
function mcm:util/queue/add {fn:"data merge storage mcm:args {animate:{pos:'-22 -2 93',order:0}}", \
                             condition:"if score $start_countdown timers matches 139"}
function mcm:util/queue/add {fn:"function mcm:util/animate/new_structure_instance {name:'mcm:lobby/theater_curtains'}" , \
                             condition:"if score $start_countdown timers matches 139"}
function mcm:util/queue/add {fn:"data remove storage mcm:args animate", \
                             condition:"if score $start_countdown timers matches 139"}
function mcm:util/queue/add {fn:"data merge storage mcm:args {animate:{pos:'-27 -1 95',order:1}}", \
                             condition:"if score $start_countdown timers matches 119"}
function mcm:util/queue/add {fn:"function mcm:util/animate/new_structure_instance {name:'mcm:lobby/theater_countdown'}", \
                             condition:"if score $start_countdown timers matches 119"}
function mcm:util/queue/add {fn:"data merge storage mcm:args {animate:{pos:'-28 -2 93',order:0,repeat:4}}", \
                             condition:"if score $start_countdown timers matches 119"}
function mcm:util/queue/add {fn:"function mcm:util/animate/new_structure_instance {name:'mcm:lobby/theater_countdown_spinner'}", \
                             condition:"if score $start_countdown timers matches 119"}
function mcm:util/queue/add {fn:"data remove storage mcm:args animate", \
                             condition:"if score $start_countdown timers matches 119"}

function mcm:util/queue/add {fn:"playsound minecraft:movie_start block @a -19 -1 104 4 1", \
                             condition:"if score $start_countdown timers matches 119"}

#TODO bossbar update if that gets added

