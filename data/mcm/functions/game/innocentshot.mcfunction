clear @s warped_fungus_on_a_stick
tellraw @s {"text":"Oh no... What have I done...","color":"red","italic":true}
execute at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1 1.2
effect give @s minecraft:nausea 30 0 true
effect give @s minecraft:blindness 1 100 true
effect give @s minecraft:slowness 2 4 true

advancement revoke @s only mcm:hit_detection/innocent_killed