#> Sets speed of rifle shots
tag @s remove NewGunShot
data modify storage arrow Motion set from entity @s Pos
data modify storage arrow Rotation set from entity @a[tag=HoldGun,tag=!shotGun,scores={gunclick=1..},limit=1,sort=nearest] Rotation
tp ^ ^ ^
data modify entity @s Motion set from storage arrow Motion
tag @s add Fired
execute as @e[type=item_display,tag=NewBullet] at @s run data modify entity @s Rotation set from storage arrow Rotation
tag @e[type=item_display,tag=NewBullet] remove NewBullet