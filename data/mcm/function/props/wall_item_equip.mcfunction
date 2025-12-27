$execute positioned $(pos) run summon item_display $(offset) {item:{id:"stick"},Tags:["wall_equip", "$(item)", "new"],Rotation:$(rotation),item_display:"ground"}
$execute if data storage mcm:items $(item) run data modify entity @e[type=item_display,tag=new,limit=1] item set from storage mcm:items $(item)
$execute unless data storage mcm:items $(item) run data modify entity @e[type=item_display,tag=new,limit=1] item.id set value "$(item)"
tag @e[type=item_display,tag=new] remove new

#> wall_face [1,2,3,4] = [north,east,south,west]
$scoreboard players set $wall_face vars $(wall_face)

$execute if score $wall_face vars matches 1 positioned $(pos) positioned ~ ~ ~-0.9 run function mcm:util/interactable/new {data:"Tags:['prop','$(item)'], response:1b, width:0.9, height:0.9", fn:"mcm:items/give {item:'$(item)'}"}
$execute if score $wall_face vars matches 2 positioned $(pos) positioned ~0.9 ~ ~ run function mcm:util/interactable/new {data:"Tags:['prop','$(item)'], response:1b, width:0.9, height:0.9", fn:"mcm:items/give {item:'$(item)'}"}
$execute if score $wall_face vars matches 3 positioned $(pos) positioned ~ ~ ~0.9 run function mcm:util/interactable/new {data:"Tags:['prop','$(item)'], response:1b, width:0.9, height:0.9", fn:"mcm:items/give {item:'$(item)'}"}
$execute if score $wall_face vars matches 4 positioned $(pos) positioned ~-0.9 ~ ~ run function mcm:util/interactable/new {data:"Tags:['prop','$(item)'], response:1b, width:0.9, height:0.9", fn:"mcm:items/give {item:'$(item)'}"}

scoreboard players reset $wall_face vars
