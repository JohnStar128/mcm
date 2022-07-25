#>Selects (currently) 5 of the bookspawn armorstands to hold an Overdue book for the Basement Unlock
execute as @e[type=minecraft:armor_stand,tag=bookspawn,tag=!hasbook,limit=5,sort=random] at @s run data merge entity @s {Tags: ["hasbook","bookspawn"],HandItems:[{id: "minecraft:book", Count: 1b, tag: {display: {Lore: ['[{"text":"You should probably return this","italic":false}]'],Name:'[{"text":"Overdue Book","italic":false,"color":"red"}]'}}}]}
execute as @e[type=armor_stand,tag=bookspawn,nbt={HandItems:[{id:"minecraft:book",Count:1b}]}] at @s run tag @s add hasbook

#Armor stand locations
#995.6 109.8 993.9
#983.4 109.85 1009.15
#975.4 109.85 993.15
#954.6 109.85 1009.9
#952.4 109.85 990.1
#982.85 120.8 1008.45
#987.1 120.8 992.6
#984.85 120.8 1012.4
#961.85 131.8 1009.4
#957.15 131.8 1014.6
#965.6 131.8 1026.9
#951.4 131.8 1023.15
#958.85 131.8 989.4
#953.85 131.8 976.4
#966.85 131.8 973.4
#944.15 142.8 971.6
#942.85 142.8 1023.4
#943.15 142.8 1031.6

#>Useful commands I'm gonna need while doing this
#/data get entity @e[type=minecraft:armor_stand,sort=nearest,limit=1]
#/execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1] at @s run tp @e[type=minecraft:armor_stand,sort=nearest,limit=1] ~ ~ ~
#/data merge entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] {Rotation:[90f]}
#/summon minecraft:armor_stand ~ ~ ~ {Pose:{RightArm:[270f,0f,0f]},ShowArms:1b,Invulnerable:1b,NoGravity:1b,HandItems:[{id: "minecraft:book", Count: 1b, tag: {display: {Lore: ['[{"text":"You should probably return this","italic":false}]'],Name:'[{"text":"Overdue Book","italic":false,"color":"red"}]'},Count:1b}}],Invisible:1b}

#execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1] at @s run data merge entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] {HandItems:[{id: "minecraft:book", Count: 1b, tag: {display: {Lore: ['[{"text":"You should probably return this","italic":false}]'],Name:'[{"text":"Overdue Book","italic":false,"color":"red"}]'},Count:1b}}]}
#execute as @e[type=minecraft:armor_stand,sort=nearest,limit=1] at @s run data merge entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] {Tags: ["bookspawn"]}