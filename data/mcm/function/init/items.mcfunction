#> How to Add new Items
# Merge the tag into a descriptive name
# Set `index` to the next available number
# Set `id` to the id of the base item i.e. `carrot_on_a_stick`
# set `nbt` to the nbt of the item
# `slot` is the prefered slot of this item to be put into. It's will not be overwritten with this



# Slots
# -1 : Mainhand
# -2 : Offhand
# 0 - 8 : hotbar.n
# 100-103 : armor


# Assign numeric ids to items using the `mcm:items/assign_id` function

# Dynamic allocation hard
data merge storage mcm:items {ids:["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]}

#> Extra nbt to be added to all items given to certain players
data modify storage mcm:items murderer_extra_nbt set value {murderer:1b}

#> Gun
data modify storage mcm:items gun set value {slot:1,id:"stick"}

#> Murderer Items
data modify storage mcm:items knife set value {slot:1,id:"crossbow"}
data modify storage mcm:items teleporter set value {slot:3,id:"stick"}
data modify storage mcm:items adrenaline set value {slot:4,id:"stick"}
data modify storage mcm:items player_tracker set value {slot:2,id:"stick"}
data modify storage mcm:items invisibility set value {slot:4,id:"stick"}

# Create role item components
data merge storage mcm:args { \
        list:[ \
                {item:"gun",make_retrieve:false,murderer:false}, \
                {item:"knife",make_retrieve:true,murderer:true}, \
                {item:"teleporter",make_retrieve:true,murderer:true}, \
                {item:"adrenaline",make_retrieve:true,murderer:true}, \
                {item:"player_tracker",make_retrieve:false,murderer:true}, \
                {item:"invisibility",make_retrieve:true,murderer:true}, \
        ] \
}
function mcm:util/loops/for_each {iter:"data storage mcm:args list[]", \
                                  fn:"mcm:init/role_item", \
                                  args:"with storage mcm:args list[0]", \
                                  update:"data remove storage mcm:args list[0]"}
data remove storage mcm:args list

data modify storage mcm:items gun.components.use_cooldown.seconds set from storage mcm:game_state state.rules.gun_delay
data modify storage mcm:items gun2 set from storage mcm:items gun
data merge storage mcm:items {gun2:{components:{custom_data:{gun2:1b}}}}

data remove storage mcm:items knife.components.custom_data.NoDrop
data remove storage mcm:items knife.components.unbreakable
data remove storage mcm:items knife.components.consumable
data modify storage mcm:items knife.components merge value { \ 
        charged_projectiles:[{id:"arrow",components:{intangible_projectile:{}}}], \
        tooltip_display:{ \
            hidden_components: [ \
                "damage", \
                "charged_projectiles" \
            ] \
        }, \
        break_sound:"entity.wither.shoot", \
        attribute_modifiers: [ \
                { \
                        type:"minecraft:attack_damage", \
                        slot:"hand", \
                        id:"mcm:knife", \
                        amount:444, \
                        operation:"add_value", \
                        display:{type:"hidden"} \
                } \
        ] \
} 


data remove storage mcm:items player_tracker.components.consumable
data remove storage mcm:items player_tracker.components.use_cooldown

#> Spyglass (in-game)
data modify storage mcm:items spyglass set value {slot:7,id:"spyglass",components:{custom_data:{NoDrop:1b,no_drop_on_death:1b}}}
#> Scrap
data modify storage mcm:items scrap set value {slot:8,id:"netherite_scrap"}
data modify storage mcm:items scrap.components merge value { \
        custom_data:{ \
                no_drop_on_death:1b, \
                scrap:1b \
        }, \
        lore:[{ \
                translate:"mcm.item.scrap.lore", \
                italic:false \
        }], \
        custom_name:{ \
                translate:"mcm.item.scrap", \
                italic:false \
        } \
}

#> Spyglass (lobby, late join)
data modify storage mcm:items latejoin_spyglass set value {slot:7,id:"stick"}
data modify storage mcm:items latejoin_spyglass.components merge value { \
        custom_data: { \
                NoDrop:1b, \
                no_drop_on_death:1b, \
                latejoin_spyglass:1b, \
                lobby_spyglass:1b \
        }, \
        item_model:"spyglass", \
        consumable:{ \
                consume_seconds:0.05f, \
                animation:"block", \
                sound:"intentionally_empty", \
                has_consume_particles:false, \
        }, \
        custom_name:{ \
                translate:"mcm.item.latejoin", \
                color:"blue", \
                "italic":false \
        } \
}
#> Spyglass (lobby, spectate)
data modify storage mcm:items spectate_spyglass set value {slot:7,id:"stick"}
data modify storage mcm:items spectate_spyglass.components merge value { \
        custom_data: { \
                NoDrop:1b, \
                no_drop_on_death:1b, \
                spectate_spyglass:1b, \
                lobby_spyglass:1b \
        }, \
        item_model:"spyglass", \
        consumable:{ \
                consume_seconds:0.05f, \
                animation:"block", \
                sound:"intentionally_empty", \
                has_consume_particles:false, \
        }, \
        custom_name:{ \
                translate:"mcm.item.spectate", \
                color:"blue", \
                "italic":false \
        } \
}

#> Respawn ticket
data modify storage mcm:items respawn_ticket set value {slot:4,id:"feather"}
data modify storage mcm:items respawn_ticket.components set value { \
        custom_data:{NoDrop:1b,reroll:1b,no_drop_on_death:1b}, \
        item_model:"misc/queue_ticket", \
        custom_name:[{"translate":"mcm.item.refund","italic":true,"color":"red"}], \
        consumable:{ \
                consume_seconds:0.05f, \
                animation:"block", \
                sound:"intentionally_empty", \
                has_consume_particles:false, \
        }, \
        use_cooldown:{ \
                seconds:3f, \
                cooldown_group:"mcm:respawn_ticket" \
        }, \
}

#> Queue tickets
data modify storage mcm:items autoqueue set value {slot:8,id:"feather"}
data modify storage mcm:items autoqueue.components set value { \
        custom_data:{NoDrop:1b,autoqueue:1b,no_drop_on_death:1b}, \
        item_model:"misc/queue_ticket_auto", \
        custom_name:[{"translate":"mcm.item.autoqueue.disable","italic":false,"color":"red"}], \
        consumable:{ \
                consume_seconds:0.05f, \
                animation:"block", \
                sound:"intentionally_empty", \
                has_consume_particles:false, \
        }, \
        use_cooldown:{ \
                seconds:3f, \
                cooldown_group:"mcm:queue_tickets" \
        }, \
}

data modify storage mcm:items deautoqueue set value {slot:8,id:"feather"}
data modify storage mcm:items deautoqueue.components set value { \
        custom_data:{NoDrop:1b,autoqueue:1b,no_drop_on_death:1b}, \
        item_model:"misc/queue_ticket", \
        custom_name:[{"translate":"mcm.item.autoqueue.enable","italic":false,"color":"green"}], \
        consumable:{ \
                consume_seconds:0.05f, \
                animation:"block", \
                sound:"intentionally_empty", \
                has_consume_particles:false, \
        }, \
        use_cooldown:{ \
                seconds:3f, \
                cooldown_group:"mcm:queue_tickets" \
        }, \
}

#> Winner popcorn
data modify storage mcm:items popcorn set value {slot:1,id:"feather"}
data modify storage mcm:items popcorn.components set value { \
        custom_data:{NoDrop:1b,popcorn:1b,no_drop_on_death:1b}, \
        item_model:"misc/popcorn", \
        custom_name:[{"translate":"mcm.item.popcorn","italic":false,"color":"yellow"}], \
        lore:[{translate:"mcm.item.popcorn.lore","italic":true,color:"dark_gray"}], \
        consumable:{ \
                consume_seconds:10f, \
                animation:"block", \
                sound:"entity.generic.eat", \
                has_consume_particles:true \
        } \
}

#> Library book
data modify storage mcm:items library_book set value {slot:-1,id:"book"}
data modify storage mcm:items library_book.components set value { \
        custom_data:{library_book:1b}, \
        item_model:"misc/3dbook", \
        custom_name:[{"translate":"mcm.library.book","italic":false,"color":"yellow"}], \
        lore:[{translate:"mcm.library.book.lore","italic":true,color:"red"}] \
}

#> Airship Crystal
data modify storage mcm:items crystal set value {slot:-1,id:"amethyst_shard"}
data modify storage mcm:items crystal.components set value { \
        custom_data:{NoDrop:1b,crystal:1b,no_drop_on_death:1b}, \
        consumable:{ \
                consume_seconds:0.5f, \
                animation: "spyglass", \
                sound: "block.end_portal_frame.fill", \
                has_consume_particles:false \
        } \
}


scoreboard players set count temp 1

#> Don't reorder items, Add new ones at the bottom
scoreboard players set $id_count vars 0

function mcm:items/assign_id {item:"gun"}
function mcm:items/assign_id {item:"knife"}
function mcm:items/assign_id {item:"teleporter"}
function mcm:items/assign_id {item:"adrenaline"}
function mcm:items/assign_id {item:"player_tracker"}
function mcm:items/assign_id {item:"knife_retrieve"}
function mcm:items/assign_id {item:"teleporter_retrieve"}
function mcm:items/assign_id {item:"adrenaline_retrieve"}
function mcm:items/assign_id {item:"invisibility"}
function mcm:items/assign_id {item:"autoqueue"}
function mcm:items/assign_id {item:"deautoqueue"}
function mcm:items/assign_id {item:"knife_retrieve"}
function mcm:items/assign_id {item:"teleporter_retrieve"}
function mcm:items/assign_id {item:"adrenaline_retrieve"}
function mcm:items/assign_id {item:"invisibility_retrieve"}
function mcm:items/assign_id {item:"popcorn"}
function mcm:items/assign_id {item:"spyglass"}
function mcm:items/assign_id {item:"scrap"}
function mcm:items/assign_id {item:"respawn_ticket"}
function mcm:items/assign_id {item:"crystal"}

# scoreboard players reset $id_count vars
