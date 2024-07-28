#> Called from an advancement

kill @e[type=item_display,tag=cabin_flint,limit=1,sort=nearest]
kill @e[type=interaction,tag=cabin_flint,sort=nearest,limit=1]

item replace entity @s weapon.mainhand with flint_and_steel[custom_name='{"translate":"mcm.cabin.flint","color":"gray","italic":false}',unbreakable={show_in_tooltip:true},can_place_on={blocks:"orange_candle"}]

advancement revoke @s only mcm:map_functions/cabin_pickup_flint

scoreboard players set $event_type temp 1
function mcm:game/summary/add_event {translate:"mcm.game.events.cabin_flint",color:"green"}
