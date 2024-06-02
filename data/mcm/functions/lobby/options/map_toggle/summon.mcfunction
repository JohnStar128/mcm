
function mcm:lobby/options/map_toggle/init

execute if data storage mcm:options init run return fail

summon text_display ^ ^2 ^ {Rotation:[90f,0f],alignment:"center", text:'{"translate":"mcm.options.toggle_maps"}', Tags:["option"]}

# Page Buttons
execute positioned ^-3.4 ^ ^-0.4 run function mcm:lobby/options/summon_interaction \
    {data:{width:0.8,height:0.5,response:1b, Tags:["unlockable"]},\
    extra:{diff:-1}, \
    callback:"mcm:lobby/options/map_toggle/page_interaction"}
execute positioned ^3.4 ^ ^-0.4 run function mcm:lobby/options/summon_interaction \
    {data:{width:0.8,height:0.5,response:1b, Tags:["unlockable"]},\
    extra:{diff:1}, \
    callback:"mcm:lobby/options/map_toggle/page_interaction"}

summon text_display ^-3.5 ^-0.5 ^ {text:'"⬅"',alignment:center,Tags:["option"],Rotation:[90f,0f],transformation:[5f,0f,0f,0f, 0f,5f,0f,0f, 0f,0f,5f,0f, 0f,0f,0f,1f],background:0}
summon text_display ^3.3 ^-0.5 ^ {text:'"⮕"',alignment:center,Tags:["option"],Rotation:[90f,0f],transformation:[5f,0f,0f,0f, 0f,5f,0f,0f, 0f,0f,5f,0f, 0f,0f,0f,1f],background:0}

# Row 1
execute positioned ^-2 ^1 ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:0},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}
execute positioned ^ ^1 ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:1},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}
execute positioned ^2 ^1 ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:2},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}

# Row 2
execute positioned ^-2 ^ ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:3},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}
execute positioned ^ ^ ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:4},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}
execute positioned ^2 ^ ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:5},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}

# Row 3
execute positioned ^-2 ^-1 ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:6},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}
execute positioned ^ ^-1 ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:7},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}
execute positioned ^2 ^-1 ^ run function mcm:lobby/options/summon_updatable_text \
    {data:{Rotation:[90f,0f],line_width:80},\
    extra:{index:8},\
    callback:"mcm:lobby/options/map_toggle/update_map_slot"}

# Interactions
# Row 1
execute positioned ^-2 ^1 ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:0, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}
execute positioned ^ ^1 ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:1, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}
execute positioned ^2 ^1 ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:2, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}

# Row 2
execute positioned ^-2 ^ ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:3, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}
execute positioned ^ ^ ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:4, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}
execute positioned ^2 ^ ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:5, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}

# Row 3
execute positioned ^-2 ^-1 ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:6, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}
execute positioned ^ ^-1 ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:7, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}
execute positioned ^2 ^-1 ^-0.775 run function mcm:lobby/options/summon_interaction \
    {data:{width:1.5,height:0.6,response:1b},\
    extra:{index:8, \
        enable_callback:"mcm:lobby/options/map_toggle/enable_map_slot" \
    },\
    callback:"mcm:lobby/options/map_toggle/map_slot_interaction"}

# Shuffle Button
execute positioned ^ ^-2 ^ run function mcm:lobby/options/summon_updatable_text \
    { \
        data:{}, extra:{}, \
        callback: "mcm:lobby/options/map_toggle/shuffle_text_callback" \
    }

execute positioned ^ ^-2.1 ^-0.75 run function mcm:lobby/options/summon_interaction \
    { \
        data:{width: 1.5, height:0.5, response:1b}, extra:{}, \
        callback: "mcm:lobby/options/map_toggle/shuffle" \
    }