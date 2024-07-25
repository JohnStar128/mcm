

$execute store result score temp temp run data get storage mcm:options options.map_toggle.$(map).enabled

$execute if score temp temp matches 1 run tag @e[type=marker,tag=$(map)] remove disabled
$execute if score temp temp matches 0 run tag @e[type=marker,tag=$(map)] add disabled