clear @s warped_fungus_on_a_stick
execute as @s at @s run loot spawn ~ ~ ~ loot mcm:gun_innocent_shot
tellraw @s {"text":"Oh no... What have I done...","color":"red","italic":true}
tellraw @s ["\n", {"text":"* You feel your sins crawling down your back","color":"yellow","italic":true}]
scoreboard players set @s canPickupGun 1
tag @s add lostGun
execute at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1 1.2
effect give @s minecraft:nausea 45 0 true
effect give @s minecraft:blindness 2 100 true
effect give @s minecraft:slowness 120 3 true

advancement revoke @s only mcm:hit_detection/innocent_killed