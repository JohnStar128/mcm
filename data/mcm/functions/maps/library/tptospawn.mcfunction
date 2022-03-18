tag @e[tag=PlayerSpawn,tag=!Occupied] add TpHere

tp @s @e[tag=TpHere,limit=1]

tag @e[tag=TpHere] add Occupied
tag @e[tag=TpHere] remove TpHere