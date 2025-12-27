#> Forceload the map
$data modify storage mcm:maps temp.load set from storage mcm:maps list[$(selected_map_idx)].forceload
$function mcm:util/loops/for_each {iter:"data storage mcm:maps list[$(selected_map_idx)].forceload", \
                                  fn:"mcm:game_state/forceload_map", \
                                  args:"with storage mcm:maps temp.load[0]", \
                                  update:"data remove storage mcm:maps temp.load[0]"}
data remove storage mcm:maps temp

#> Activate the map when it loads
$function mcm:game_state/activate_map with storage mcm:maps list[$(selected_map_idx)]
