
effect give @s invisibility 10 0 true

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

tag @s add invisible
scoreboard players set @s invisibility 200

playsound minecraft:entity.generic.drink block @a ~ ~ ~ 1 1 0

execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{invisibility:1b}] run function mcm:items/retrieve/mainhand
execute if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{invisibility:1b}] run function mcm:items/retrieve/offhand