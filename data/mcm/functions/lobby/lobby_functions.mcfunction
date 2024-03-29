#> This function serves as functions that need to run while someone is in the lobby.
#> It's primarily just to save on resources when a game is running and everyone's playing.

#> Note that this is not necessarily the same as when a game is running because 
#> someone may just not join and stay in the lobby.

#> Detect first joins to fix spawning on the roof
execute as @a[tag=!first_join] run effect give @s blindness 3 1 true
execute as @a[tag=!first_join,scores={jump=1..}] run function mcm:first_join
execute as @a[tag=!first_join,scores={walk=1..}] run function mcm:first_join
execute as @a[tag=!first_join,scores={sprint=1..}] run function mcm:first_join
execute as @a[tag=!first_join,scores={crouch=1..}] run function mcm:first_join

#> Auto queue
scoreboard players remove @a[scores={autoqueue_delay=1..}] autoqueue_delay 1
execute as @a[tag=first_join,tag=!autoqueue_spam_prevention,scores={autoqueue=1..,autoqueue_delay=0},tag=!autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Autoqueue:1b}}}] at @s run function mcm:lobby/queueing/autoqueue
execute as @a[tag=first_join,tag=!autoqueue_spam_prevention,scores={autoqueue=1..,autoqueue_delay=0},tag=autoqueue,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Autoqueue:1b}}}] at @s run function mcm:lobby/queueing/deautoqueue

#> Popcorn
execute if score $gamestate CmdData matches -1..0 run function mcm:lobby/popcorn

#> Reset warped fungus on a stick related scoreboards so they don't mess with eachother
scoreboard players reset @a[scores={autoqueue=1..}] autoqueue

#> Hats
scoreboard players enable @a hatchange
execute as @a[scores={hatchange=-1}] run function mcm:cosmetics/change_cosmetics
execute as @a[scores={hatchange=1..}] run function mcm:cosmetics/change_cosmetics

#> Tp players who use the book to go back to spawnpoint
scoreboard players enable @a[tag=!queued] stuck
execute as @a[scores={stuck=1..},tag=!queued] run tp @s -1 1 69
execute as @a[scores={stuck=1..},tag=!queued] run scoreboard players reset @s stuck

#> Lobby elevator
function mcm:lobby/elevator

#> Secret related stuff
execute as @a[scores={RingBell=1..},advancements={mcm:secrets/lobby/ring_bell=false},predicate=mcm:secrets/lobby_bell] at @s run advancement grant @s only mcm:secrets/lobby/ring_bell
execute as @a[scores={RingBell=1..}] at @s run scoreboard players reset @s RingBell

#> Guessing this is for that one store in the lobby with the hglllhshglgl - Topaz
execute positioned 32.5 2.3 29.5 if entity @a[distance=..7] run particle block minecraft:red_concrete 32.5 2.3 30.5 0 0.3 0 1 1
execute positioned 32.5 2.3 29.5 if entity @a[distance=..7] run particle block minecraft:light_blue_concrete 32.5 2.3 29.5 0 0.3 0 1 1
execute positioned 32.5 2.3 29.5 if entity @a[distance=..7] run particle block minecraft:lime_concrete 32.5 2.3 28.5 0 0.3 0 1 1

#> Let people use the test range in the lobby
execute as @a[predicate=mcm:bounding_boxes/lobby_grate] run tag @s add came_from_grate
execute as @a[predicate=mcm:bounding_boxes/lobby_grate] run tp @s 33 1 121 180 0
execute as @a[predicate=mcm:bounding_boxes/test_range_kill_items] run function mcm:lobby/test_range
execute as @a[tag=test_range,predicate=!mcm:bounding_boxes/test_range_kill_items] run function mcm:lobby/test_range_leave

#> Lobby arcade machines
function mcm:lobby/arcade

#> Credits room
execute if entity @a[predicate=mcm:bounding_boxes/credits] run function mcm:lobby/credits/credits
#> Reset if no one's there
execute unless entity @a[predicate=mcm:bounding_boxes/credits] if score $credit_timer CmdData matches 0.. positioned -30 -38 154 run function mcm:lobby/credits/reset

#> Rule updates
execute as @a[scores={player_rule_update=1..}] run function mcm:game/rules/try_rule_update
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{HowToPlay:1b}}}] run item modify entity @s weapon.mainhand mcm:refresh_book

#> Remove items players shouldn't have
function mcm:lobby/remove_items

#> Set the how-to-play lectern back to the front page unless someone's close enough to read it
execute positioned -1 1 79 unless entity @a[distance=..5] if entity @a[distance=6..10] run data merge block ~ ~ ~ {Page:0}
execute positioned -1 1 79 if entity @a[distance=..5] run data modify block ~ ~ ~ Book merge from block ~ ~-2 ~ Items[0]
#> Unresolve signs for translatable text to show up
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block 7 1 84 {Resolved:0b}
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block 5 1 83 {Resolved:0b}
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block 3 1 82 {Resolved:0b}
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block 1 1 81 {Resolved:0b}
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block -1 1 81 {Resolved:0b}
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block -5 1 82 {Resolved:0b}
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block -7 1 83 {Resolved:0b}
execute positioned -1 1 79 if entity @a[distance=..12] run data merge block -9 1 84 {Resolved:0b}

#> Manage AFK players
execute if entity @a[tag=afk] run function mcm:lobby/afk_loop
execute as @a[tag=afk,scores={walk=1000..}] run function mcm:lobby/manage_afk
execute as @a[tag=afk,scores={sprint=1..}] run function mcm:lobby/manage_afk
execute as @a[tag=afk,scores={crouch=1..}] run function mcm:lobby/manage_afk
execute as @a[tag=afk,scores={jump=1..}] run function mcm:lobby/manage_afk

#> Update cosmetic displays if someone's trying to equip one
execute as @a[predicate=mcm:bounding_boxes/lobby_cosmetic_zone,limit=1,sort=random] unless entity @a[tag=display_scroll_lock] run tag @s add display_scroll_lock
execute as @a[tag=display_scroll_lock] run function mcm:lobby/displays/control
execute as @a[tag=display_scroll_lock,predicate=!mcm:bounding_boxes/lobby_cosmetic_zone] run tag @s remove display_scroll_lock

#> Spectate item
execute if score $gamestate CmdData matches 1.. as @a[tag=!queued] if score @s spyglass matches 1.. as @s[nbt={SelectedItem:{id:"minecraft:spyglass",tag:{Spectate:1b}}}] run function mcm:game/spectate
scoreboard players set @a spyglass 0