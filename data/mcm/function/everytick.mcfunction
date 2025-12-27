
#> What to do if a player disconnects and rejoins
execute as @a[scores={leave=1..}] unless score @s gameID = $gameID vars run function mcm:player_state/leave
scoreboard players reset @a[scores={leave=1..}] leave

#> Reset voting if no one is on the server TODO

#> Tick all timers
function mcm:util/timer/tick_all
#> Run all animations
function mcm:util/animate/animate_all_structures

#> Commands for various stages of gameplay flow will branch into their own directories from this file
#> Game control
function mcm:game_state/run with storage mcm:game_state state
#> Run lobby-related code only if people are actually there
execute if entity @a[predicate=mcm:map_bounds/lobby/bounds] run function mcm:lobby/run

#> Queued functions
function mcm:util/queue/run
# I'm giving myself this lazy out because it's really not that egregious
# Causes all arrows to instantly despawn when they hit a surface
execute as @e[type=arrow] run data modify entity @s life set value 1199

#> Process all triggers
function mcm:util/trigger/all_active_triggers

#> NoDrop module
function mcm:util/nodrop

#> Disable tips
# scoreboard players enable @a disableTips
# execute as @a[scores={disableTips=1..},tag=!NoTip] run tellraw @s {"translate":"mcm.tip.disable","color":"green"}
# execute as @a[scores={disableTips=1..},tag=!NoTip] run tellraw @s {"translate":"mcm.tip.reminder","color":"green"}
# execute as @a[scores={disableTips=1..},tag=!NoTip] run tag @s add NoTip
# execute as @a[scores={disableTips=0},tag=NoTip] run tellraw @s {"translate":"mcm.tip.enable","color":"green"}
# execute as @a[scores={disableTips=0},tag=NoTip] run tag @s remove NoTip

#> Teleport players not in match & outside of lobby bounding box back to lobby unless on Developer Team (escape prevention)
execute as @a[tag=!queued,tag=!spectator,predicate=!mcm:map_bounds/lobby/bounds,team=!test4] run tp @s -1 1 70

#> Remove the Ushers' trades when they come back
execute as @e[type=villager] run data modify entity @s Offers.Recipes set value []

#> Branding for lobby players
bossbar set mcm:branding players @a[tag=!spectator,tag=!queued]
