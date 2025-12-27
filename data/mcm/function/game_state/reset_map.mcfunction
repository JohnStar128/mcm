
#> Run the map's reset function
$function mcm:maps/$(name)/reset

#> No longer forceload the map
$data modify storage mcm:maps temp.load set from storage mcm:maps list[$(selected_map_idx)].forceload
$function mcm:util/loops/for_each {iter:"data storage mcm:maps list[$(selected_map_idx)].forceload", \
                                  fn:"mcm:game_state/unload_map", \
                                  args:"with storage mcm:maps temp.load[0]", \
                                  update:"data remove storage mcm:maps temp.load[0]"}
data remove storage mcm:maps temp
