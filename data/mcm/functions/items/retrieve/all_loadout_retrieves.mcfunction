
execute store result score scrap temp run clear @s netherite_scrap 0
data merge storage mcm:args {slot:1}
function mcm:items/retrieve/knife

data merge storage mcm:args {slot:2}
function mcm:items/retrieve/loadout {slot:1}

data merge storage mcm:args {slot:3}
function mcm:items/retrieve/loadout {slot:2}

data merge storage mcm:args {slot:4}
function mcm:items/retrieve/loadout {slot:3}

function mcm:items/give_item_cleanup