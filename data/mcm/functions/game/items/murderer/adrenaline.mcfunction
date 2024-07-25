scoreboard players set $event_type temp 1
function mcm:game/summary/add_event {translate:"mcm.game.events.adrenaline",color:"green"}

#> Clicking the adrenaline item gives buffs
effect give @s speed 5 3 true
effect give @s jump_boost 5 2 true
tag @s add usedAdrenaline
playsound minecraft:entity.generic.drink block @a ~ ~ ~ 1 1 0
execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{adrenaline:1b}] run function mcm:items/retrieve/mainhand
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{adrenaline:1b}] run function mcm:items/retrieve/offhand
function mcm:util/reset_carrot_on_stick