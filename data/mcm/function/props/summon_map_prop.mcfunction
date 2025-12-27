# Summon all props of a certain type for this map
# Internal only - use props/summon to call this function

data modify storage mcm:args temp_for set from storage mcm:args for
scoreboard players operation $iter_temp vars = $iter vars

$data modify storage mcm:args props_inner.list set from storage mcm:props maps.$(map).$(type)
$function mcm:util/loops/for_each {iter:"data storage mcm:props maps.$(map).$(type)[]", \
                                  fn:"mcm:props/$(type)", \
                                  args:"with storage mcm:args props_inner.list[0]", \
                                  update:"data remove storage mcm:args props_inner.list[0]"}
data remove storage mcm:args props_inner

# Update loop
$data modify storage mcm:args props.type set from storage mcm:props maps.$(map).prop_types[$(idx)]
data modify storage mcm:args for set from storage mcm:args temp_for
data remove storage mcm:args temp_for
scoreboard players operation $iter vars = $iter_temp vars
scoreboard players reset $iter_temp vars

