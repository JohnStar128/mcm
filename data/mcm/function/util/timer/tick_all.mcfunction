#> Tick over each timer
data modify storage mcm:args timers.list set from storage mcm:timers list
function mcm:util/loops/for_each {iter:"data storage mcm:timers list[]", \
                                  fn:"mcm:util/timer/tick_timer", \
                                  args:"with storage mcm:args timers.list[0]", \
                                  update:"data remove storage mcm:args timers.list[0]"}
data remove storage mcm:args timers
