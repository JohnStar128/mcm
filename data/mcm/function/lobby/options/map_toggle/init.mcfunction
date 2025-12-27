

execute unless data storage mcm:options options.map_toggle.maps[0] run \
    data merge storage mcm:options {options:{map_toggle:{maps:[], page:0, map_count:0, page_size:9}}}

data modify storage mcm:options temp set from storage mcm:maps list
# Remove the Random map
data remove storage mcm:options temp[0]
function mcm:util/loops/for_each {iter:"data storage mcm:options temp[]", \
                                  fn:"mcm:lobby/options/map_toggle/add_map", \
                                  args:"with storage mcm:options temp[0]", \
                                  update: "function mcm:util/noop"}


# function mcm:lobby/options/map_toggle/add_map {name:airship, translate:"mcm.airship.name"}
# function mcm:lobby/options/map_toggle/add_map {name:cabin, translate:"mcm.cabin.name"}
# function mcm:lobby/options/map_toggle/add_map {name:canyon, translate:"mcm.canyon.name"}
# function mcm:lobby/options/map_toggle/add_map {name:cyberpunk, translate:"mcm.cyberpunk.name"}
# function mcm:lobby/options/map_toggle/add_map {name:gumdrop, translate:"mcm.gumdrop.name"}
# function mcm:lobby/options/map_toggle/add_map {name:industry, translate:"mcm.industry.name"}
# function mcm:lobby/options/map_toggle/add_map {name:launchpad, translate:"mcm.launchpad.name"}
# function mcm:lobby/options/map_toggle/add_map {name:library2, translate:"mcm.library.name"}
# function mcm:lobby/options/map_toggle/add_map {name:riverboat, translate:"mcm.riverboat.name"}
# function mcm:lobby/options/map_toggle/add_map {name:sculk, translate:"mcm.sculk.name"}
# function mcm:lobby/options/map_toggle/add_map {name:train, translate:"mcm.train.name"}
# function mcm:lobby/options/map_toggle/add_map {name:vineyard2, translate:"mcm.vineyard.name"}

execute store result score count temp run data get storage mcm:options options.map_toggle.map_count
execute store result score size temp run data get storage mcm:options options.map_toggle.page_size
execute store result storage mcm:options options.map_toggle.max_page int 1 run \
    scoreboard players operation count temp /= size temp
