#> If they passed the test
execute if score @s forklifttest matches 5 run give @s paper[custom_name='{"translate":"mcm.industry.forklift_license","color":"gold","italic":false,"bold":true}']
execute as @a[tag=!forkliftlicense] if score @s forklifttest matches 5 run tag @s add forkliftlicense
execute as @a[tag=forkliftlicense] if score @s forklifttest matches 5 run scoreboard players reset @s forklifttest
execute as @a[tag=forkliftlicense,advancements={mcm:secrets/industry/forklift=false}] run advancement grant @s only mcm:secrets/industry/forklift
execute as @a[tag=forkliftlicense] if score @s forklifttest matches 5 run scoreboard players set $event_type temp 1
execute as @a[tag=forkliftlicense] if score @s forklifttest matches 5 run function mcm:game/summary/add_event {translate:"mcm.game.events.industry_forklift_license",color:"green"}

#> If they did not pass the test
execute if score @s forklifttest matches ..5 run tellraw @s ["", {"translate":"mcm.industry.forklift_license.printer_unavailable"}]

advancement revoke @a only mcm:map_functions/industry_printer

