#> Macro so we don't flood the item init with a million of these
$data modify storage mcm:items $(item).components set value { \
        custom_data:{ \
                item:"$(item)", \
                $(item):1b, \
                NoDrop:1b \
        }, \
        unbreakable:{}, \
        tooltip_display:{ \
            hidden_components: [ \
                "unbreakable" \
            ] \
        }, \
        item_model:"role_items/$(item)", \
        custom_name:[{ \
                translate:"mcm.item.$(item)", \
                italic:false \
        }], \
        lore:[ \
                [{translate:"mcm.item.$(item).lore",italic:false,color:"dark_purple"}] \
        ], \
        use_cooldown:{ \
                seconds:2.5, \
                cooldown_group:"mcm:role_items" \
        }, \
        consumable:{ \
                consume_seconds:0.05f, \
                animation:"spyglass", \
                sound:"intentionally_empty", \
                has_consume_particles:false, \
        } \
}

$scoreboard players set $temp vars $(murderer)
$execute if score $temp vars matches 1 run data merge storage mcm:items {$(item):{components:{custom_data:{murderer:1b,no_drop_on_death:1b}}}}
$execute if score $temp vars matches 1 run data modify storage mcm:items $(item).components.use_cooldown.seconds set value 1.0

#> Retrieval item (kinda hate the copy-paste but it's probably for the best)
$scoreboard players set $temp vars $(make_retrieve)
execute if score $temp vars matches 0 run return run scoreboard players reset $temp vars

$data modify storage mcm:items $(item)_retrieve set value {slot:-1,id:"stick"}
$data modify storage mcm:items $(item)_retrieve.slot set from storage mcm:items $(item).slot
$data modify storage mcm:items $(item)_retrieve.components set value { \
        custom_data:{ \
                item:"$(item)_retrieve", \
                retrieval:1b, \
                NoDrop:1b, \
                cost:10, \
                retrieve:"$(item)" \
        }, \
        unbreakable:{}, \
        tooltip_display:{ \
            hidden_components: [ \
                "unbreakable" \
            ] \
        }, \
        item_model:"role_items/$(item)_retrieval", \
        custom_name:[{ \
                translate:"mcm.item.$(item)_retrieve", \
                italic:false \
        }], \
        lore:[ \
                '[{"translate":"mcm.item.$(item)_retrieve.lore","italic":false}]' \
        ], \
        use_cooldown:{ \
                seconds:2.5, \
                cooldown_group:"mcm:role_items" \
        }, \
        consumable:{ \
                consume_seconds:0.05f, \
                animation:"block", \
                sound:"intentionally_empty", \
                has_consume_particles:false, \
        } \
}
$data modify storage mcm:items $(item).components.use_remainder set from storage mcm:items $(item)_retrieve

$scoreboard players add $temp vars $(murderer)
$execute if score $temp vars matches 2 run data merge storage mcm:items {$(item)_retrieve:{components:{custom_data:{murderer:1b,no_drop_on_death:1b}}}}
$execute if score $temp vars matches 2 run data modify storage mcm:items $(item).components.use_cooldown.seconds set value 1.0

scoreboard players reset $temp vars
