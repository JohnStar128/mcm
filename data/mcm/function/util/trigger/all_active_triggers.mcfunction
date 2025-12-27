#> If there are no active triggers, end early
execute unless data storage mcm:scoreboards active_triggers[0] run return 0

#> Attempt to run the queued functions
data modify storage mcm:args temp.list set from storage mcm:scoreboards active_triggers
function mcm:util/loops/for_each {iter:"data storage mcm:args temp.list[]", \
                                  fn:"mcm:util/trigger/check_trigger", \
                                  args:"with storage mcm:args temp.list[0]", \
                                  update:"data remove storage mcm:args temp.list[0]"}
data remove storage mcm:args temp
