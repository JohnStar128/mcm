#> Controls the stuff in the test range portion of the lobby

#> Target was hit
execute unless block 35 1 109 target[power=0] run summon firework_rocket 35 3 109 {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;4312372],FadeColors:[I;14602026]}]}}}}
execute unless block 35 1 109 target[power=0] run setblock 35 1 109 target
execute unless block 38 10 115 target[power=0] run summon firework_rocket 38 12 115 {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;4312372],FadeColors:[I;14602026]}]}}}}
execute unless block 38 10 115 target[power=0] run setblock 38 10 115 target
execute unless block 33 14 109 target[power=0] run summon firework_rocket 33 16 109 {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;4312372],FadeColors:[I;14602026]}]}}}}
execute unless block 33 14 109 target[power=0] run setblock 33 14 109 target
execute unless block 36 10 100 target[power=0] run summon firework_rocket 36 12 100 {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;4312372],FadeColors:[I;14602026]}]}}}}
execute unless block 36 10 100 target[power=0] run setblock 36 10 100 target
execute unless block 33 3 99 target[power=0] run summon firework_rocket 33 5 99 {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Colors:[I;4312372],FadeColors:[I;14602026]}]}}}}
execute unless block 33 3 99 target[power=0] run setblock 33 3 99 target

#> Tp here from grate in the lobby
execute as @a[predicate=mcm:bounding_boxes/lobby_grate] run tp @s 33 1 121 180 0

#> Return to main lobby
execute as @a[predicate=mcm:bounding_boxes/test_range_grate] run clear @s snowball
execute as @a[predicate=mcm:bounding_boxes/test_range_grate] run clear @s warped_fungus_on_a_stick{CustomModelData:1111}
execute as @a[predicate=mcm:bounding_boxes/test_range_grate] run tp @s 28 1 63