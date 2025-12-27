$data modify storage mcm:queue list append value {id:$(id),fn:"$(fn)",condition:""}
data modify storage mcm:queue list[-1].condition set from storage mcm:args temp.condition[0]
