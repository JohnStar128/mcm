#> "Fake Kills" the player with some fancy effects instead of actual /kill commands.

tellraw @s[advancements={mcm:hit_detection/gun_hit=true}] {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[tag=shotGun]","color":"red"}]}
tellraw @s[advancements={mcm:hit_detection/knife_hit=true}] {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[tag=murderer]","color":"red"}]}
tellraw @s[advancements={mcm:hit_detection/knife_melee_hit=true}] {"text":"You were killed by ","color":"gold","extra":[{"selector":"@a[tag=murderer]","color":"red"}]}

execute at @s run scoreboard players set @s dead 1
tag @s add TempDead
execute at @s run tp @s @s
execute at @s run gamemode spectator @s
execute at @s run spectate 
execute at @s run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1 0.8
execute at @s run particle block redstone_block ~ ~1 ~ 0.2 0.1 0.1 0.1 50 force
execute at @s run loot spawn ~ ~1.4 ~ loot mcm:playerhead
execute as @e[type=item,tag=!NBTSet,nbt={Item:{id:"minecraft:player_head"}}] run data merge entity @s {PickupDelay:2000000000,Tags:["KeyItem"]}

#oof ouch my bones
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","1","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.0d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","2","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.2d,0.15d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","3","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.1d,0.1d,0.2d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","4","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.15d,0.4d,0.0d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","5","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[-0.05d,0.2d,0.0d]}
execute at @s run summon item ~ ~0.5 ~ {Tags:["BoneDeco","6","KeyItem"],PickupDelay:2000000000,Item:{id:"minecraft:bone",Count:1b},Motion:[0.15d,0.3d,-0.15d]}

#> Drop gun if gunner is killed
#execute as @a[tag=gunner,scores={dead=1..},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] at @s run summon item ~ ~ ~ {PickupDelay:10s,Tags:["deadDrop","gun","KeyItem"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111,Tags:["KeyItem"],display:{Name:"{\"translate\":\"mcm.item.gun\",\"italic\":\"false\"}"}}}}
execute as @a[tag=gunner,scores={dead=1..},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] at @s run loot spawn ~ ~ ~ loot mcm:gun_normal
execute as @a[tag=gunner,scores={dead=1..},nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}] at @s run clear @s warped_fungus_on_a_stick 

#> LIBRARY: Drop books if they have any
execute if score $selectedMap CmdData matches 1 as @a[tag=innocent,scores={books=1..}] at @s run loot spawn ~ ~ ~ loot mcm:books
execute if score $selectedMap CmdData matches 1 as @a[tag=innocent,scores={books=1..}] at @s run clear @s book

#> Spectate (temporary)
execute at @s run gamemode spectator @s
execute at @s run spectate @a[tag=murderer,limit=1,sort=nearest]
#execute at @s run tag @s remove innocent
execute at @s run tag @s remove gunner
execute at @s run tag @s add spectating

tag @s remove TempDead

advancement revoke @s only mcm:hit_detection/gun_hit
advancement revoke @s only mcm:hit_detection/knife_hit
advancement revoke @s only mcm:hit_detection/knife_melee_hit

scoreboard players set @s dead 1