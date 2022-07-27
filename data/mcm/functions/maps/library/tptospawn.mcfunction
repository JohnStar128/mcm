execute unless entity @e[type=marker,tag=PlayerSpawn,tag=!Occupied] as @e[type=marker,tag=PlayerSpawn,tag=Occupied] run tag @s remove Occupied
tp @s @e[type=marker,tag=PlayerSpawn,tag=!Occupied,limit=1,sort=random]

execute as @s at @s run tag @e[type=marker,tag=PlayerSpawn,limit=1,sort=nearest,distance=..1] add Occupied