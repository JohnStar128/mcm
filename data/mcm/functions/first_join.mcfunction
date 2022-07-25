effect give @s slowness 2 20 true
title @s title {"text":"Welcome!","color":"green"}
title @s subtitle {"text":"The show\'s about to begin!","color":"green"}
tp @s -1 1 69 0 0
tag @s add first_join
scoreboard players set @s selected_hat 0
advancement grant @s only mcm:root