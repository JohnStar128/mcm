

execute unless data storage mcm:options options.map_toggle.maps[0] run \
    data merge storage mcm:options {options:{map_toggle:{maps:[], page:0, map_count:0, page_size:9}}}


function mcm:lobby/options/map_toggle/add_map {name:Airship, translate:"mcm.airship.name"}
function mcm:lobby/options/map_toggle/add_map {name:Cabin, translate:"mcm.cabin.name"}
function mcm:lobby/options/map_toggle/add_map {name:Canyon, translate:"mcm.canyon.name"}
function mcm:lobby/options/map_toggle/add_map {name:Cyberpunk, translate:"mcm.cyberpunk.name"}
function mcm:lobby/options/map_toggle/add_map {name:Gumdrop, translate:"mcm.gumdrop.name"}
function mcm:lobby/options/map_toggle/add_map {name:Industry, translate:"mcm.industry.name"}
function mcm:lobby/options/map_toggle/add_map {name:Launchpad, translate:"mcm.launchpad.name"}
function mcm:lobby/options/map_toggle/add_map {name:Library, translate:"mcm.library.name"}
function mcm:lobby/options/map_toggle/add_map {name:Riverboat, translate:"mcm.riverboat.name"}
function mcm:lobby/options/map_toggle/add_map {name:Sculk, translate:"mcm.sculk.name"}
function mcm:lobby/options/map_toggle/add_map {name:Train, translate:"mcm.train.name"}
function mcm:lobby/options/map_toggle/add_map {name:Vineyard, translate:"mcm.vineyard.name"}

execute store result score count temp run data get storage mcm:options options.map_toggle.map_count
execute store result score size temp run data get storage mcm:options options.map_toggle.page_size
execute store result storage mcm:options options.map_toggle.max_page int 1 run \
    scoreboard players operation count temp /= size temp
