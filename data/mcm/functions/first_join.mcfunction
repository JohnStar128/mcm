effect give @s slowness 2 20 true
title @s title {"text":"Welcome!","color":"green"}
title @s subtitle {"text":"The show\'s about to begin!","color":"green"}
tp @s -1 1 69 0 0
tag @s add first_join
scoreboard players set @s selected_hat 0
scoreboard players set @s autoqueue_delay 0
advancement grant @s only mcm:root

function mcm:player_leave
function mcm:lobby/lobby_cosmetic_signs

item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:1234,NoDrop:1b,Autoqueue:1b,display:{Name:'[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}]'}}
item replace entity @s hotbar.4 with written_book{HowToPlay:1b,NoDrop:1b}
#> Get Player UUID
execute store result score @s playerUUID run data get entity @s UUID[0]
