#> Run on the interaction entity of the option

# Reset interaction for next click
data remove entity @s interaction

# Call the interactions callback
function mcm:lobby/options/backend/call with entity @s Passengers[0].data

# Call the text displays update callback
function mcm:lobby/options/backend/update_displays
