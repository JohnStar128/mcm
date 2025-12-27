data remove storage mcm:cosmetics list

# These are the maps available currently, using their backend names for macro usage later
data merge storage mcm:cosmetics {list:[ \
                                   {model:"unequip_head",slot:103,req:"",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"3dglasses",slot:103,req:"",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"rainbowhat",slot:103,req:"advancements={mcm:secrets/lobby/ring_bell=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"dark3dglasses",slot:103,req:"advancements={mcm:secrets/library/library=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"aviatorcap",slot:103,req:"advancements={mcm:secrets/airship/captain=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"lance",slot:103,req:"advancements={mcm:secrets/vineyard/lance=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"bowlerhat",slot:103,req:"advancements={mcm:secrets/vineyard/vineyard=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"spacehelmet",slot:103,req:"advancements={mcm:secrets/launchpad/spaceship=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"bellhat",slot:103,req:"advancements={mcm:secrets/cyberpunk/cyberpunk=true}",type:"head",sound:"block.bell.use"}, \
                                   {model:"skipperhat",slot:103,req:"advancements={mcm:secrets/riverboat/riverboat=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"winterhat",slot:103,req:"advancements={mcm:secrets/cabin/generator=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"fancy",slot:103,req:"advancements={mcm:secrets/train/dinner=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"hardhat",slot:103,req:"advancements={mcm:secrets/industry/forklift=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"minerhat",slot:103,req:"advancements={mcm:secrets/canyon/mines=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"donut",slot:103,req:"",type:"head",sound:"item.armor.equip_leather"}, \
                                   {model:"warden_ears",slot:103,req:"advancements={mcm:secrets/sculk/message=true}",type:"head",sound:"item.armor.equip_leather"}, \
                                 ]\
}

# Create cosmetic items from the list
scoreboard players set $temp vars 0
data modify storage mcm:cosmetics temp set from storage mcm:cosmetics list
function mcm:util/loops/for_each {iter:"data storage mcm:cosmetics list[]", \
                                  fn:"mcm:init/create_cosmetic_items", \
                                  args:"with storage mcm:cosmetics temp[0]", \
                                  update:"data remove storage mcm:cosmetics temp[0]"}
data remove storage mcm:cosmetics temp
scoreboard players reset $temp vars

data modify storage mcm:items unequip_head set value {slot:103,id:"air"}
data modify storage mcm:items unequip_head.components set value {"minecraft:item_model":"minecraft:air"}
data modify storage mcm:items unequip_head.components_str set value "[item_model=air]"
