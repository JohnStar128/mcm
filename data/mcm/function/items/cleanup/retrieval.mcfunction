
#> Check the cost
$scoreboard players set $cost_check vars $(cost)
execute store result score $player_scrap vars if items entity @s container.* netherite_scrap[custom_data~{scrap:1b}]
scoreboard players operation $cost_check vars -= $player_scrap vars
scoreboard players reset $player_scrap vars

#> If it failed, give the retrieval back
execute if score $cost_check vars matches 1.. run summon item ~ ~ ~ {Item:{id:"stick"},PickupDelay:1,Tags:["new"]}
$execute if score $cost_check vars matches 1.. as @e[type=item,tag=new] run data modify entity @s Item set from storage mcm:items $(retrieve)_retrieve
execute if score $cost_check vars matches 1.. run data modify entity @e[type=item,tag=new,limit=1] Owner set from entity @s UUID
execute if score $cost_check vars matches 1.. run data modify entity @e[type=item,tag=new,limit=1] Thrower set from entity @s UUID
execute if score $cost_check vars matches 1.. as @e[type=item,tag=new] run tag @s remove new
execute if score $cost_check vars matches 1.. run return fail


#> Give the item and take scrap
$function mcm:items/give {item:"$(retrieve)"}
$clear @s *[custom_data~{scrap:1b}] $(cost)

#> Lightning for knife recall and kill thrown knife
execute store success score $knife_check vars run data modify storage mcm:args retrieve.retrieve set value "knife"
execute if score $knife_check vars matches 0 at @s positioned ~ ~7.5 ~ run summon lightning_bolt
execute if score $knife_check vars matches 0 run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if score $knife_check vars matches 0 run kill @e[type=item,predicate=mcm:matches_uuid]
execute if score $knife_check vars matches 0 run tag @s remove free_recall

# Event log
execute if entity @s[tag=queued] if score $knife_check vars matches 0 run function mcm:summary/add_event {translate:"mcm.game.events.recalled_knife",color:"green",type:1}

scoreboard players reset $knife_check vars
scoreboard players reset $tempuuid playerUUID

# other scores and data get reset after exit
return 1
