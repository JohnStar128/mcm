#> John Spawnpoint
execute as @r[limit=1] at @s if entity @s[name=JohnStar128,tag=queued,tag=!murderer] run tp @s @e[type=marker,tag=JohnSpawn,limit=1]
#> Blocky Spawnpoint
execute as @r[limit=1] at @s if entity @s[name=BlockyM_,tag=queued,tag=!murderer] run tp @s @e[type=marker,tag=BlockySpawn,limit=1]
#> Everyone else
tp @s @e[type=marker,tag=PlayerSpawn,tag=!Occupied,tag=!launch_player,limit=1,sort=random]
execute as @s at @s run tag @e[type=marker,tag=PlayerSpawn,limit=1,sort=nearest,distance=..1] add Occupied
