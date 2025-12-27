# Arguments (stored in storage mcm:args for):
#   iter: Number of iterations
#   fn: function to call
#   args: function args
#   update: Loop update

$scoreboard players set $iter vars $(iter)
execute if score $iter vars matches ..0 run return run scoreboard players reset $iter vars

$data merge storage mcm:args {for:{fn:"$(fn)", args:"$(args)"}}

$function $(fn) $(args)
$$(update)

execute store result storage mcm:args for.iter int 1 run scoreboard players remove $iter vars 1
function mcm:util/loops/for with storage mcm:args for
data remove storage mcm:args for
scoreboard players reset $iter vars
