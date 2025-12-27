#> Add to the queue with a unique id
$data merge storage mcm:queue {temp:{id:0,fn:"$(fn)",condition:"$(condition)"}} 
execute store result storage mcm:queue temp.id int 1 run function mcm:util/next_prng
data modify storage mcm:queue list append from storage mcm:queue temp
data remove storage mcm:queue temp
