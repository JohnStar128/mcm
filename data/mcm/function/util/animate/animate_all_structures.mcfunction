#> Process each animated structure
data modify storage mcm:args animate.list set from storage mcm:animate active_structures
function mcm:util/loops/for_each {iter:"data storage mcm:args animate.list[]", \
                                  fn:"mcm:util/animate/animate_structure", \
                                  args:"with storage mcm:args animate.list[0]", \
                                  update:"data remove storage mcm:args animate.list[0]"}
data remove storage mcm:args animate.list
