clear @s warped_fungus_on_a_stick
execute at @s run loot spawn ~ ~ ~ loot mcm:gun_innocent_shot
execute at @s as @e[type=item,sort=nearest,limit=1] run data merge entity @s {PickupDelay:5s}
execute at @s run function mcm:util/get_player_name {out:"entity @e[type=item,sort=nearest,nbt={Item:{components:{\"minecraft:custom_data\":{gun:1b}}}},limit=1] Item.components.minecraft:custom_data.owner"}
tellraw @s {"translate":"mcm.gunner.innocentkill.ohno","color":"red","italic":true}
tellraw @s ["\n", {"translate":"mcm.gunner.innocentkill.sins","color":"yellow","italic":true}]
scoreboard players set @s canPickupGun 1
tag @s add lostGun
execute at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1 1.2
effect give @s minecraft:nausea 15 0 true
effect give @s minecraft:darkness 5 100 true
effect give @s minecraft:slowness 120 4 true
tag @s remove gunner

advancement revoke @s only mcm:hit_detection/innocent_killed