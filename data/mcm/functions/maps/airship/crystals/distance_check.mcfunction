#> Generate a marker and tp distance from player to beacon.
#> If it lands on the beacon we know the player targeted this one.
function mcm:math/dist
#scoreboard players operation $out temp *= $minus_one math
execute at @s run summon marker ~ ~ ~ {NoAI:1b,Tags:["distance_check"]}

# Converts angle in deg into proper values for the trig functions
execute store result score $player_r1 temp run data get entity @s Rotation[0] 91.022222
execute store result score $player_r2 temp run data get entity @s Rotation[1] 91.022222

# Add 90 degs to correct for some minecraft stuff
scoreboard players add $player_r1 temp 8192
scoreboard players add $player_r2 temp 8192

scoreboard players operation $angle math = $player_r1 temp
function mcm:math/sin_cos
scoreboard players operation $sin_theta temp = $result_sin math
scoreboard players operation $cos_theta temp = $result_cos math

scoreboard players operation $angle math = $player_r2 temp
function mcm:math/sin_cos
scoreboard players operation $sin_phi temp = $result_sin math
scoreboard players operation $cos_phi temp = $result_cos math

# Note {sin,cos}_{theta,phi} are 2^12 scaled

#> Spherical coordinates
scoreboard players operation $x temp = $out temp
scoreboard players operation $x temp *= $sin_phi temp
scoreboard players operation $x temp /= $2^2 math
scoreboard players operation $x temp *= $sin_theta temp

scoreboard players operation $z temp = $out temp
scoreboard players operation $z temp *= $sin_phi temp
scoreboard players operation $z temp /= $2^2 math
scoreboard players operation $z temp *= $cos_theta temp

scoreboard players operation $y temp = $out temp
scoreboard players operation $y temp *= $cos_phi temp
scoreboard players operation $y temp *= $2^10 math

# ^ results scaled by 2^22

scoreboard players operation $x temp /= $2^12 math
scoreboard players operation $y temp /= $2^12 math
scoreboard players operation $z temp /= $2^12 math

# Scaled 2^10
execute store result score $player_x temp run data get entity @s Pos[0] 1024
execute store result score $player_y temp run data get entity @s Pos[1] 1024
scoreboard players add $player_y temp 1536
execute store result score $player_z temp run data get entity @s Pos[2] 1024

execute store result entity @e[type=marker,tag=distance_check,limit=1] Pos[0] double 0.0009765625 run scoreboard players operation $z temp += $player_x temp
execute store result entity @e[type=marker,tag=distance_check,limit=1] Pos[1] double 0.0009765625 run scoreboard players operation $y temp += $player_y temp
execute store result entity @e[type=marker,tag=distance_check,limit=1] Pos[2] double 0.0009765625 run scoreboard players operation $x temp += $player_z temp

execute if entity @e[type=marker,tag=distance_check,distance=..7] run tag @e[type=marker,tag=airship_teleport_beacon,sort=nearest,limit=1] add valid
kill @e[type=marker,tag=distance_check]

