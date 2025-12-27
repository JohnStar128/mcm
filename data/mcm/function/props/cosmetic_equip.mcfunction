# Summon the cosmetic display selection in the lobby

$summon item_display $(pos) {Tags:["cosmetic_equip", "$(model)", "prop"],item_display:"head",$(extra)}
$execute as @e[type=item_display,tag=cosmetic_equip,tag=$(model)] unless data entity @s transformation run data merge entity @s {transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,1f]}
$data modify entity @e[type=item_display,tag=cosmetic_equip,tag=$(model),limit=1] item set from storage mcm:items $(model)
$data modify entity @e[type=item_display,tag=cosmetic_equip,tag=$(model),limit=1] transformation.translation set value [0f,$(translation)f,0f]
$function mcm:util/interactable/new {data:"Tags:['cosmetic_equip','$(model)','prop'],response:true,width:1,height:2",fn:"mcm:cosmetic/equip with storage mcm:cosmetics list[{model:'$(model)'}]"}
$execute as @e[type=interaction,tag=$(model),tag=cosmetic_equip] store result score @s selected_head run data get storage mcm:cosmetics list[{model:"$(model)"}].id 
$execute as @e[type=interaction,tag=$(model),tag=cosmetic_equip] run ride @s mount @e[type=item_display,tag=cosmetic_equip,tag=$(model),limit=1]
