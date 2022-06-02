tp @s @e[tag=PlayerSpawn,tag=!Occupied,limit=1,sort=random]

execute as @s at @s run tag @e[tag=PlayerSpawn,limit=1,sort=nearest,distance=..1] add Occupied