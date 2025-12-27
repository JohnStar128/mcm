# This function should only ever run the very first time the server starts,
# and will reset all states back to their initial ones

#> Set time and weather
weather clear
time set 15600

#> Create scoreboards
function mcm:init/scoreboards
data merge storage mcm:timers {list:[]}

#> Set (minecraft) gamerules
function mcm:init/gamerules

#> Math constants and stuff
function mcm:init/math

# Catch-all for restarting the voting period
kill @e[type=marker, tag=map_vote]

#> Set default active maps
function mcm:init/maps

#> Set game state IMPORTANT TO BE BEFORE ITEMS
function mcm:init/gamestate

#> Initialize items
function mcm:init/items

#> Initialize props
function mcm:init/props

#> Initialize cosmetics
function mcm:init/cosmetics

#> Initialize animation storage
function mcm:init/animate

#> Misc
function mcm:init/misc_data

#> Teams
function mcm:init/teams

# Dependent on lobby being loaded but needs to be run after props init
function mcm:util/queue/add {fn:"function mcm:lobby/load",condition:"if loaded 0 0 0"}

data merge storage mcm:game_state {finished_init:1b}

