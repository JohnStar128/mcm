#> Smart murderer selection logic
data modify storage mcm:temp test set value "smart"
execute store success score $players vars if entity @a[tag=queued,tag=!spectator]
# temp=0 -> auto, temp=1 -> manual (already set)
execute store success score $temp vars run data modify storage mcm:temp test set value "$(murderer_selection)"
execute if score $temp vars matches 0 if score $players vars matches ..7 run data modify storage mcm:game_state state.rules.murderer_count set value 1
execute if score $temp vars matches 0 if score $players vars matches 8..17 run data modify storage mcm:game_state state.rules.murderer_count set value 2
execute if score $temp vars matches 0 if score $players vars matches 18.. run data modify storage mcm:game_state state.rules.murderer_count set value 3

# Just in case
execute store result score $murderers vars run data get storage mcm:game_state state.rules.murderer_count
execute if score $players vars <= $murderers vars run data modify storage mcm:game_state state.rules.murderer_count set value 1

data remove storage mcm:temp test
scoreboard players reset $temp vars
scoreboard players reset $players vars
scoreboard players reset $murderers vars
