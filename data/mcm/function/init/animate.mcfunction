data remove storage mcm:animate structure
data remove storage mcm:animate default_structure_args
data remove storage mcm:animate active_structures

# Naming convention for structures is {namespace:name}_{frame}
# Frames is number of frames and duration is number of ticks before the next frame
data merge storage mcm:animate {structure: \
    [ \
        {name:"mcm:lobby/theater_curtains",frames:5,duration:9}, \
        {name:"mcm:lobby/theater_countdown",frames:5,duration:19}, \
        {name:"mcm:lobby/theater_countdown_spinner",frames:10,duration:1}, \
        {name:"mcm:airship/propeller",frames:2,duration:99}, \
        {name:"mcm:airship/fan",frames:2,duration:19}, \
        {name:"mcm:airship/waterwheel",frames:2,duration:39}, \
    ] \
}

#> Default arguments so that it's not necessary to input them all the time
#   pos: The coordinates to load the structure (with /place template)
#   rotation: The argument to /place template
#   mirror: The argument to /place template
#   integrity: The argument to /place template
#   seed: The argument to /place template
#   repeat: Whether the animation cyclically repeats or not (1 or 0)
#   order: Whether to play the frames in forwards or backwards order  (0 or 1)
data merge storage mcm:animate {default_structure_args:{pos:"0 100 0",rotation:"none",mirror:"none",integrity:1.0,seed:1,repeat:0,order:0}}
# A list of active animations playing, will be processed every tick
data merge storage mcm:animate {active_structures:[]}
