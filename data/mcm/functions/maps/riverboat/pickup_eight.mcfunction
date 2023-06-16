#> Called from an advancement

kill @e[type=item_display,tag=eight,tag=riverboat_card,limit=1,sort=nearest]
kill @e[type=interaction,tag=eight,tag=riverboat_card,sort=nearest,limit=1]

item replace entity @s weapon.mainhand with stick{CustomModelData:1117,display:{Name:"{\"translate\":\"mcm.item.card\",\"color\":\"gray\",\"italic\":\"false\"}"}} 1

advancement revoke @s only mcm:map_functions/riverboat_pickup_eight
