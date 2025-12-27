# Assign maps to each poster slot

data modify storage mcm:voting slots append from storage mcm:voting vacant_slots[0]
$data modify storage mcm:voting slots[-1].name set value $(name)
$data modify storage mcm:voting slots[-1].model set from storage mcm:maps list[$(map_idx)].model
data remove storage mcm:voting vacant_slots[0]
