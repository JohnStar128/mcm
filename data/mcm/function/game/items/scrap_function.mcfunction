advancement revoke @s only mcm:item_counts/scrap

#> Murderer doesn't use this anymore
execute if entity @s[tag=murderer] run return run function mcm:items/retrieve/all_loadout_retrieves

#> If a player has 10 scrap, give gun
execute store result score scrap temp run clear @s netherite_scrap 0
execute unless score scrap temp matches 10.. run return fail
execute if entity @s[tag=gunner] run return fail

execute if entity @s[tag=innocent,tag=!NoTip] run title @s subtitle {"translate" : "mcm.tip.gunner", "color" : "dark_gray", "with" : [{"keybind":"key.use","color":"dark_aqua"}]}
execute if entity @s[tag=innocent,tag=!NoTip] run title @s title ""
execute if entity @s[tag=innocent] run scoreboard players set $event_type temp 1
execute if entity @s[tag=innocent] run function mcm:game/summary/add_event {translate:"mcm.game.events.crafted_gun", color: "green"}
execute if entity @s[tag=innocent] run function mcm:items/give {item:"gun"}
execute if entity @s[tag=innocent] run tag @s add gunner
