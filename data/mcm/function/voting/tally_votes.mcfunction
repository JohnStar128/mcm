
$execute if score $$(name) vote_totals > $most_votes vars run scoreboard players operation $most_votes vars = $$(name) vote_totals
$execute if score $$(name) vote_totals < $most_votes vars run tag @s remove winner
