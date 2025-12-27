#> Called from an advancement

kill @e[type=item_display,tag=ace,tag=riverboat_card,limit=1,sort=nearest]
kill @e[type=interaction,tag=ace,tag=riverboat_card,sort=nearest,limit=1]

item replace entity @s weapon.mainhand with stick[max_stack_size=1,custom_data={ace:1b,riverboat_card:1b},item_model="misc/playingcard",custom_name="{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":false}"] 1

advancement revoke @s only mcm:map_functions/riverboat_pickup_ace

scoreboard players set $event_type temp 1
function mcm:game/summary/add_event {translate:"mcm.game.events.riverboat_card",color:"green"}
