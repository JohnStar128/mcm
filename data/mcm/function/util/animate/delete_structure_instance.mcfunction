# Delete a structure animation (i.e., stop animating after it's reached the last frame)

$data remove storage mcm:animate active_structures[{id:$(id)}]
$function mcm:util/timer/delete {name:"$(name)_$(id)"}
