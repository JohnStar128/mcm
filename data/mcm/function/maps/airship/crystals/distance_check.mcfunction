#> Generate a marker and tp distance from player to beacon.
#> If it lands on the beacon we know the player targeted this one.
function mcm:math/dist
execute at @s run summon marker ~ ~ ~ {NoAI:1b,Tags:["distance_check"]}

# Converts angle in deg into proper values for the trig functions
execute store result score $player_r1 vars run data get entity @s Rotation[0] 91.022222
execute store result score $player_r2 vars run data get entity @s Rotation[1] 91.022222

# Add 90 degs to correct for some minecraft stuff
scoreboard players add $player_r1 vars 8192
scoreboard players add $player_r2 vars 8192

scoreboard players operation $angle math = $player_r1 vars
function mcm:math/sin_cos
scoreboard players operation $sin_theta vars = $result_sin math
scoreboard players operation $cos_theta vars = $result_cos math

scoreboard players operation $angle math = $player_r2 vars
function mcm:math/sin_cos
scoreboard players operation $sin_phi vars = $result_sin math
scoreboard players operation $cos_phi vars = $result_cos math

# Note {sin,cos}_{theta,phi} are 2^12 scaled

#> Spherical coordinates
scoreboard players operation $x vars = $distance vars
scoreboard players operation $x vars *= $sin_phi vars
scoreboard players operation $x vars /= $2^2 math
scoreboard players operation $x vars *= $sin_theta vars

scoreboard players operation $z vars = $distance vars
scoreboard players operation $z vars *= $sin_phi vars
scoreboard players operation $z vars /= $2^2 math
scoreboard players operation $z vars *= $cos_theta vars

scoreboard players operation $y vars = $distance vars
scoreboard players operation $y vars *= $cos_phi vars
scoreboard players operation $y vars *= $2^10 math

# ^ results scaled by 2^22

scoreboard players operation $x vars /= $2^12 math
scoreboard players operation $y vars /= $2^12 math
scoreboard players operation $z vars /= $2^12 math

# Scaled 2^10
execute store result score $player_x vars run data get entity @s Pos[0] 1024
execute store result score $player_y vars run data get entity @s Pos[1] 1024
scoreboard players add $player_y vars 1536
execute store result score $player_z vars run data get entity @s Pos[2] 1024

execute store result entity @e[type=marker,tag=distance_check,limit=1] Pos[0] double 0.0009765625 run scoreboard players operation $z vars += $player_x vars
execute store result entity @e[type=marker,tag=distance_check,limit=1] Pos[1] double 0.0009765625 run scoreboard players operation $y vars += $player_y vars
execute store result entity @e[type=marker,tag=distance_check,limit=1] Pos[2] double 0.0009765625 run scoreboard players operation $x vars += $player_z vars

execute if entity @e[type=marker,tag=distance_check,distance=..7] run tag @e[type=marker,tag=airship_teleport_beacon,sort=nearest,limit=1] add valid
kill @e[type=marker,tag=distance_check]

scoreboard players reset $x vars
scoreboard players reset $y vars
scoreboard players reset $z vars
scoreboard players reset $player_x vars
scoreboard players reset $player_y vars
scoreboard players reset $player_z vars
scoreboard players reset $player_r1 vars
scoreboard players reset $player_r2 vars
scoreboard players reset $sin_theta vars
scoreboard players reset $cos_theta vars
scoreboard players reset $sin_phi vars
scoreboard players reset $cos_phi vars
