# Arguments:
#   data: A list of numbers
#   out: Where to store the result

scoreboard players set $total vars 0
$execute store result score $n vars if data $(data)[]
$data modify storage mcm:args avg_args.list set value "$(data)"
data modify storage mcm:args avg_args.idx set value 0
scoreboard players set $idx vars 0

$function mcm:util/loops/for_each {iter:"data $(data)[]", \
                                  fn:"mcm:math/add_list", \
                                  args:"with storage mcm:args avg_args", \
                                  update:"execute store result storage mcm:args avg_args.idx int 1 run scoreboard players add $idx vars 1"}
data remove storage mcm:args avg_args

$execute store result $(out) run scoreboard players operation $total vars /= $n vars
scoreboard players reset $total vars
scoreboard players reset $n vars
scoreboard players reset $idx vars
