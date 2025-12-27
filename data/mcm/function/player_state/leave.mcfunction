#> Versioning system, resets players who have joined with a different BS version
execute as @a unless score @s version = $current_version version run function mcm:first_join
execute as @a unless score @s version = $current_version version run scoreboard players operation @s version = $current_version version

#> Lobby team
team join nametags @s
#> in case they logged out in spectator
gamemode adventure @s
#> Teleport to lobby
tp @s -1 1 69 0 0
#> Clear any game effects and re-apply normal ones
effect clear @s
effect give @a saturation infinite 100 true
effect give @a resistance infinite 100 true
effect give @a weakness infinite 100 true

#> Reset non-persistant scores
data modify storage mcm:scoreboards temp set from storage mcm:scoreboards boards[{persist:'0'}]
function mcm:util/loops/for_each {iter:"data storage mcm:scoreboards boards[{persist:'0'}]", \
                                  fn:"mcm:player/reset_score", \
                                  args:"with storage mcm:scoreboards temp[0]", \
                                  update:"data remove storage mcm:scoreboards temp[0]"}
data remove storage mcm:scoreboards temp

#> Reset tags from the game
tag @s remove queued
tag @s remove innocent
tag @s remove gunner
tag @s remove murderer
tag @s remove spectator
tag @s remove free_knife

#> Remove advancements
advancement revoke @s from mcm:items/root
advancement revoke @s from mcm:hit_detection/root

#> Lobby kit
function mcm:items/loadouts/lobby
