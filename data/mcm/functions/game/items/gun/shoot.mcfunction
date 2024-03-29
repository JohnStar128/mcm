tag @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1111}}}] add HoldGun

execute as @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..}] at @s facing ^ ^ ^14 positioned 0.0 0 0.0 run summon arrow ^ ^ ^7 {NoGravity:1b,Tags:["GunShot","NewGunShot"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Small:1b,Silent:1b,Tags:["BulletDeco","NewBullet"],NoGravity:1b,Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:420}}]}]}
execute as @e[type=arrow,tag=NewGunShot] at @s run data modify entity @s Owner set from entity @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..},limit=1,sort=nearest] UUID
execute as @e[type=arrow,tag=NewGunShot] at @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..},limit=1,sort=nearest] positioned ~ ~1.5 ~ run function mcm:game/items/gun/setspeed

execute as @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..}] at @s run playsound gun_shoot master @a ~ ~ ~ 2 1

execute as @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..}] on vehicle on passengers run tag @s add no_recoil
execute as @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..},tag=!no_recoil] at @s run tp @s ~ ~ ~ ~ ~-3
tag @a remove no_recoil


execute as @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..}] at @s anchored eyes run tag @s add shotGun
execute as @a[tag=HoldGun,tag=shotGun,scores={gunclick=1..,gundelay=3..35}] at @s run function mcm:game/items/gun/clicksound

scoreboard players remove @a[tag=shotGun] gundelay 1

#> Show delay
xp set @a[scores={gundelay=..1}] 0 levels
xp set @a[scores={gundelay=41}] 16 levels
xp set @a[scores={gundelay=41}] 41 points
xp add @a[scores={gundelay=..40}] -1 points

execute as @a[tag=shotGun,scores={gundelay=0}] at @s run function mcm:game/items/gun/loadsound
tag @a[scores={gundelay=..0}] remove shotGun
scoreboard players operation @a[scores={gundelay=..0},tag=!shotGun] gundelay = $gun_delay GameRules

tag @a[tag=HoldGun] remove HoldGun
execute as @e[type=armor_stand,tag=BulletDeco] at @s unless entity @e[type=arrow,tag=GunShot,distance=..200] run kill @s

#Range
execute as @e[type=arrow,tag=GunShot,nbt={inGround:1b}] run scoreboard players set @s gundelay 8
scoreboard players add @e[type=arrow,tag=GunShot] gundelay 1
execute as @e[type=arrow,tag=GunShot,scores={gundelay=7}] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 10 force
execute as @e[type=arrow,tag=GunShot,scores={gundelay=8..}] at @s run kill @e[type=armor_stand,tag=BulletDeco,limit=1,sort=nearest,distance=..4]
execute as @e[type=arrow,tag=GunShot,scores={gundelay=8..}] at @s run particle block gold_block ~ ~ ~ 0 0 0 0.1 4 force
execute as @e[type=arrow,tag=GunShot,scores={gundelay=8..}] at @s run playsound block.stone.break master @a ~ ~ ~ 1 2
kill @e[type=arrow,scores={gundelay=8..}]