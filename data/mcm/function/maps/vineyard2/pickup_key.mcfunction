#> Called from an advancement

kill @e[type=item_display,tag=vineyard_key,limit=1,sort=nearest]
kill @e[type=interaction,tag=vineyard_key,sort=nearest,limit=1]

item replace entity @s weapon.mainhand with tripwire_hook[custom_data={vineyard_truck_keys:1b},custom_name='{"translate":"mcm.vineyard.truck_key","color":"gray","italic":false}'] 1

scoreboard players set $event_type temp 1
function mcm:game/summary/add_event {translate:"mcm.game.events.vineyard_truck_keys", color: "green"}

advancement revoke @s only mcm:map_functions/vineyard_pickup_key
