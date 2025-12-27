
execute unless data storage mcm:args animate.pos run data modify storage mcm:args animate.pos set from storage mcm:animate default_structure_args.pos
execute unless data storage mcm:args animate.rotation run data modify storage mcm:args animate.rotation set from storage mcm:animate default_structure_args.rotation
execute unless data storage mcm:args animate.mirror run data modify storage mcm:args animate.mirror set from storage mcm:animate default_structure_args.mirror
execute unless data storage mcm:args animate.repeat run data modify storage mcm:args animate.repeat set from storage mcm:animate default_structure_args.repeat
execute unless data storage mcm:args animate.integrity run data modify storage mcm:args animate.integrity set from storage mcm:animate default_structure_args.integrity
execute unless data storage mcm:args animate.seed run data modify storage mcm:args animate.seed set from storage mcm:animate default_structure_args.seed
execute unless data storage mcm:args animate.order run data modify storage mcm:args animate.order set from storage mcm:animate default_structure_args.order
$data modify storage mcm:args animate merge from storage mcm:animate structure[{name:"$(name)"}]
data modify storage mcm:args animate merge value {current_frame:0,id:0}
execute store result storage mcm:args animate.id int 1 run function mcm:util/next_prng

function mcm:util/animate/create_structure_instance with storage mcm:args animate
data remove storage mcm:args animate
