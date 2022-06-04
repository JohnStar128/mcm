#> "Fake Kills" the player with some fancy effects instead of actual /kill commands.

tellraw @s[advancements={mcm:hit_detection/gun_hit=true}] {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[tag=shotGun]","color":"red"}]}
tellraw @s[advancements={mcm:hit_detection/knife_hit=true}] {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[tag=murderer]","color":"red"}]}
tellraw @s[advancements={mcm:hit_detection/knife_melee_hit=true}] {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[tag=murderer]","color":"red"}]}

tag @s add TempDead
execute at @s run tp @s @s
execute at @s run gamemode spectator @s
execute at @s run spectate 
execute at @s run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1 0.8
execute at @s run particle block redstone_block ~ ~1 ~ 0.2 0.1 0.1 0.1 50 force
execute at @s run loot spawn ~ ~1.4 ~ loot mcm:playerhead
execute as @e[type=item,tag=!NBTSet,nbt={Item:{id:"minecraft:player_head"}}] run data merge entity @s {PickupDelay:2000000000}

#oof ouch my bones
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","1"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.0d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","2"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.15d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","3"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.1d,0.1d,0.2d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","4"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.15d,0.4d,0.0d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","5"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.05d,0.2d,0.0d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","6"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.3d,-0.15d]}


#> Spectate (temporary)
execute at @s run gamemode spectator @s
execute at @s run spectate @a[tag=murderer,limit=1,sort=nearest]
execute at @s run tag @s remove innocent
execute at @s run tag @s remove gunner
execute at @s run tag @s add spectating

tag @s remove TempDead

advancement revoke @s only mcm:hit_detection/gun_hit
advancement revoke @s only mcm:hit_detection/knife_hit
advancement revoke @s only mcm:hit_detection/knife_melee_hit