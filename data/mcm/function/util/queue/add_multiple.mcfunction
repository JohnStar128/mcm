#> Add one function with multiple conditions to the queue, all with the same unique id
#> Syntax is the same as a normal add, but condition is a list of strings
$data merge storage mcm:args {temp:{id:0,fn:"$(fn)",condition:$(condition)}} 

execute store result storage mcm:args temp.id int 1 run function mcm:util/next_prng
function mcm:util/loops/for_each {iter:"data storage mcm:args temp.condition[]", \
                                  fn:"mcm:util/queue/add_multiple_helper", \
                                  args:"with storage mcm:args temp", \
                                  update:"data remove storage mcm:args temp.condition[0]"}

data remove storage mcm:args temp