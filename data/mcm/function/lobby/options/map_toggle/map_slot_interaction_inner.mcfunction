
$execute store result score enabled temp run data get storage mcm:options options.map_toggle.$(map).enabled
scoreboard players add enabled temp 1

$execute store result storage mcm:options options.map_toggle.$(map).enabled int 1 run \
    scoreboard players operation enabled temp %= $two math