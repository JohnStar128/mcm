# Wrapper for creating cosmetic items
$data remove storage mcm:items $(model)
$data modify storage mcm:items $(model) set value {slot:$(slot),id:"diamond_hoe"}
$data modify storage mcm:items $(model).components set value { \
        "minecraft:custom_data":{no_drop_on_death:1b}, \
        "minecraft:item_model":"minecraft:hats/$(model)", \
        "minecraft:custom_name":[{"translate":"mcm.item.$(model)","italic":false,"color":"gray"}], \
        "minecraft:enchantments":{ \
            binding_curse:1 \
        }, \
        "minecraft:unbreakable":{}, \
        "minecraft:tooltip_display":{ \
            hide_tooltip:true \
        } \
}
$function mcm:items/assign_id {item:"$(model)"}

$execute store result storage mcm:cosmetics list[{model:"$(model)"}].id int 1 run scoreboard players add $temp vars 1
