#> Give a player tnt when they click an interaction
execute store result score $tempuuid playerUUID run data get entity @s interaction.player[0]
execute as @a[predicate=mcm:matches_uuid] run give @s tnt[lore=['[{"translate":"mcm.canyon.tnt.lore","italic":false}]'],custom_name='[{"translate":"mcm.canyon.tnt","italic":false,"color":"red"}]']
execute as @a[predicate=mcm:matches_uuid] run scoreboard players set $event_type temp 1
execute as @a[predicate=mcm:matches_uuid] run function mcm:game/summary/add_event {translate:"mcm.game.events.canyon_get_tnt", color:"green"}
#> Clear the book from the map
kill @e[type=block_display,tag=canyon_tnt,limit=1,sort=nearest]
kill @s
