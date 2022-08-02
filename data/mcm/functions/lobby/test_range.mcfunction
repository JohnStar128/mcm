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

#> Testing range item frames
execute as @a[advancements={mcm:lobby/testing_range_knife=true},nbt=!{Inventory:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1111}}]}] run give @s snowball{NoDrop:0b,Unbreakable:1,CustomModelData:1111,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-122419,10812,22346,-21624]}],display:{Name:'[{"translate":"mcm.item.knife","italic":false}]',Lore:['[{"translate":"mcm.item.knife.lore","italic":false}]']}} 
execute as @a[advancements={mcm:lobby/testing_range_gun=true},nbt=!{Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}]}] run give @s warped_fungus_on_a_stick{NoDrop:0b,CustomModelData:1111,display:{Name:'[{"translate":"mcm.item.gun","italic":false}]',Lore:['[{"translate":"mcm.item.gun.lore","italic":false}]']}} 

execute as @e[tag=kniferange,nbt=!{ItemRotation:2b}] run data merge entity @s {ItemRotation:2b}
execute as @e[tag=gunrange,nbt=!{ItemRotation:0b}] run data merge entity @s {ItemRotation:0b}

#> Return to main lobby
execute as @a[predicate=mcm:bounding_boxes/test_range_grate] run tp @s 28 1 63

#> Kill knives/guns in the test range
execute as @e[type=item,predicate=mcm:bounding_boxes/test_range_kill_items,nbt={OnGround:1b,Item:{tag:{CustomModelData:1111}}}] run kill @s

#> Tag players in the test range
tag @s add test_range