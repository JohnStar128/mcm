effect give @s slowness 2 20 true
title @s title {"text":"Welcome!","color":"green"}
title @s subtitle {"text":"The show\'s about to begin!","color":"green"}
tp @s -1 1 69 0 0
tag @s add first_join
scoreboard players set @s selected_hat 0
scoreboard players set @s autoqueue_delay 0
advancement grant @s only mcm:root
advancement grant @s only mcm:secrets/lobby/root
advancement grant @s only mcm:secrets/airship/root
advancement grant @s only mcm:secrets/cyberpunk/root
#advancement grant @s only mcm:secrets/gumdrop/root
advancement grant @s only mcm:secrets/library/root
advancement grant @s only mcm:secrets/vineyard/root
advancement grant @s only mcm:secrets/launchpad/root
advancement grant @s only mcm:secrets/riverboat/root
advancement grant @s only mcm:secrets/industry/root
advancement grant @s only mcm:secrets/train/root
advancement grant @s only mcm:secrets/cabin/root

function mcm:player_leave
function mcm:lobby/lobby_cosmetic_signs
function mcm:lobby/lobby_text_displays

function mcm:lobby/give_lobby_items

#> Get Player UUID
execute store result score @s playerUUID run data get entity @s UUID[0]
