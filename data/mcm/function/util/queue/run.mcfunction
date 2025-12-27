#> If the queue is empty, finish early
execute unless data storage mcm:queue list[0] run return 0

#> Attempt to run the queued functions
data modify storage mcm:args temp.list set from storage mcm:queue list
function mcm:util/loops/for_each {iter:"data storage mcm:args temp.list[]", \
                                  fn:"mcm:util/queue/run_helper", \
                                  args:"with storage mcm:args temp.list[0]", \
                                  update:"data remove storage mcm:args temp.list[0]"}
data remove storage mcm:args temp
