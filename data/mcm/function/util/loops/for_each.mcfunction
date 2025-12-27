# Arguments (stored in storage mcm:args for):
#   iter: A list to iterate over
#   fn: Function to call
#   args: Function args
#   update: Loop update

$execute store result storage mcm:args for.iter int 1 if $(iter)
$data merge storage mcm:args {for:{fn:"$(fn)", args:"$(args)", update:"$(update)"}}
function mcm:util/loops/for with storage mcm:args for
