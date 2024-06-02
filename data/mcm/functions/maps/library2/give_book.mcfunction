#> Give a player a book when they click an interaction
execute store result score $tempuuid playerUUID run data get entity @s interaction.player[0]
execute as @a[predicate=mcm:matches_uuid] run give @s book{CustomModelData:1111, display: {Lore: ['[{"translate":"mcm.library.book.lore","italic":false}]'],Name:'[{"translate":"mcm.library.book","italic":false,"color":"red"}]'}}
execute as @a[predicate=mcm:matches_uuid] run scoreboard players set $event_type temp 1
execute as @a[predicate=mcm:matches_uuid] run function mcm:game/summary/add_event {translate:"mcm.game.events.library_get_book", color:"green"}
#> Clear the book from the map
kill @e[type=item_display,tag=book_display,limit=1,sort=nearest]
kill @s
