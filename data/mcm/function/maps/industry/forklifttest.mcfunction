#> Enable forklift question repsonses
#scoreboard players enable @s forkliftresponse

#> Response checking
# Correct
execute if score @s forkliftresponse matches 1 run tellraw @s ["", {"translate":"mcm.industry.forklift_test.correct"}]
#execute if score @s forkliftresponse matches 1 run scoreboard players set $event_type temp 1
#execute if score @s forkliftresponse matches 1 run function mcm:game/summary/add_event {translate:"mcm.game.events.industry_forklift_test_event",color:"green"}
execute if score @s forkliftresponse matches 1 run function mcm:maps/industry/add_player_to_computer
execute if score @s forkliftresponse matches 1 run scoreboard players add @s forklifttest 1

#Incorrect
execute if score @s forkliftresponse matches 2 run tellraw @s ["", {"translate":"mcm.industry.forklift_test.incorrect"}]
execute if score @s forkliftresponse matches 2 at @e[type=marker,tag=forklifttest] run function mcm:maps/industry/remove_player_from_computer
execute if score @s forkliftresponse matches 2 run scoreboard players set @s forklifttest 0

execute if score @s forkliftresponse matches 1.. run advancement revoke @s only mcm:map_functions/industry_forklift_test
execute if score @s forkliftresponse matches 1.. run scoreboard players set @s forkliftresponse 0

#> When all 5 questions are answered, allow player to pick up their license at printer
execute if score @s forklifttest matches 5 run advancement revoke @s only mcm:map_functions/industry_forklift_test
execute if score @s forklifttest matches 5 run tellraw @s ["", {"translate":"mcm.industry.forklift_test.forklift_license_ready"}]
