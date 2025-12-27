#> Reset the countdown, runs if too many players dequeue while it's running

#> Notify that there's no longer enough players
tellraw @a ["\n", {"translate":"mcm.lobby.usher.say","color":"dark_green", "with":[{"translate":"mcm.lobby.usher.not.enough.players","color":"green"}]}, "\n"]
execute as @a at @s run playsound entity.villager.no neutral @s ~ ~ ~ 1 1 0

#> Remove animation artifacts and timers, but wait for animations to finish
function mcm:util/timer/delete {name:"$start_countdown"}
function mcm:util/animate/delete_structure_instance with storage mcm:animate active_structures[{name:"mcm:lobby/theater_curtains"}]
function mcm:util/animate/delete_structure_instance with storage mcm:animate active_structures[{name:"mcm:lobby/theater_countdown"}]
function mcm:util/animate/delete_structure_instance with storage mcm:animate active_structures[{name:"mcm:lobby/theater_countdown_spinner"}]
fill -27 -2 93 -25 18 115 air replace black_wool
place template mcm:lobby/theater_curtains_0 -22 -2 93
stopsound @a * minecraft:movie_start
