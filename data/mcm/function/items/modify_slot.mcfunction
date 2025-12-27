# Arguments:
#   slot: inventory slot provided to item command
#   components: any and all components to be set

$item modify entity @s $(slot) {function:"set_components", components:$(components)}
