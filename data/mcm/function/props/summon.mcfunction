# Arguments:
#   map: The name of the map to summon props for

$data modify storage mcm:args props.map set value "$(map)"
$data modify storage mcm:args props.type set from storage mcm:props maps.$(map).prop_types[0]
data modify storage mcm:args props.idx set value 1

scoreboard players set $idx vars 1
$function mcm:util/loops/for_each {iter:"data storage mcm:props maps.$(map).prop_types[]", \
                                  fn:"mcm:props/summon_map_prop", \
                                  args:"with storage mcm:args props", \
                                  update:"execute store result storage mcm:args props.idx int 1 run scoreboard players add $idx vars 1"}
scoreboard players reset $idx vars

data remove storage mcm:args props
