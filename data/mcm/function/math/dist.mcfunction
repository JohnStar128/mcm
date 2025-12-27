# License: MIT
# theorized by vdvman1, implemented by rx97

#define storage vars:

#> Inputs:
#>   location / at context -> start point (assumes it is loaded)
#>   @s entity -> end point
#>   storage dist: dist.vector (optional) ->
#>   : must be in [x.xd, y.yd, z.zd] format

#> Examples:
#>   execute positioned 100.0 100.0 100.0 run function <this>
#>     -> assuming @s is the player, will measure distance to 100.0 100.0 100.0
#>
#>   data modify storage dist: dist.vector set from entity @s Motion
#>   execute positioned 0.0 0.0 0.0 run function <this>
#> 	   -> calculates the velocity of entity @s

#> Summon helper if it doesn't exist..
execute unless entity b5feab18-60ed-5ffd-b394-d71674d85bf6 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648, UUID:[I;-1241601256,1626169341,-1282091242,1960336374]}

#> Get start
tp b5feab18-60ed-5ffd-b394-d71674d85bf6 ~ ~ ~
data modify storage dist: dist.start set from entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos

#> Get either Pos or Custom
execute unless data storage dist: dist.vector run data modify entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos set from entity @s Pos
execute if data storage dist: dist.vector run data modify entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos set from storage dist: dist.vector

#> Store original vector component
scoreboard players set $component vars 0

# First, try x
execute store result score $distance vars run data get entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos[0] 100000
execute store result score $start vars run data get storage dist: dist.start[0] 100000
scoreboard players operation $distance vars -= $start vars
execute if score $distance vars matches -1..1 run scoreboard players set $component vars 1

# If x failed, try y
execute if score $component vars matches 1 store result score $distance vars run data get entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos[1] 100000
execute if score $component vars matches 1 store result score $start vars run data get storage dist: dist.start[1] 100000
execute if score $component vars matches 1 run scoreboard players operation $distance vars -= $start vars
execute if score $component vars matches 1 if score $distance vars matches -1..1 run scoreboard players set $component vars 2

# If y failed, try z
execute if score $component vars matches 2 store result score $distance vars run data get entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos[2] 100000
execute if score $component vars matches 2 store result score $start vars run data get storage dist: dist.start[2] 100000
execute if score $component vars matches 2 run scoreboard players operation $distance vars -= $start vars
execute if score $component vars matches 2 if score $distance vars matches -1..1 run scoreboard players set $component vars -1

# set to 0 if all components are 0
execute if score $component vars matches -1 run scoreboard players set $distance vars 0

#> Gather the unit vector (positioned is pos context ~ ~ ~)
execute as b5feab18-60ed-5ffd-b394-d71674d85bf6 facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1

execute if score $component vars matches 0 store result score $unit_component vars run data get entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos[0] 100000
execute if score $component vars matches 1 store result score $unit_component vars run data get entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos[1] 100000
execute if score $component vars matches 2 store result score $unit_component vars run data get entity b5feab18-60ed-5ffd-b394-d71674d85bf6 Pos[2] 100000

#> Find magnitude, will return 0 if $distance is 0
scoreboard players operation $distance vars /= $unit_component vars

#> Resets for future invocations
data remove storage dist: dist
scoreboard players reset $component vars
scoreboard players reset $unit_component vars
scoreboard players reset $start vars
