
$execute positioned $(pos) run summon item_display ~0.4 ~0.15 ~0.25 { \
    item:{id:"minecraft:rabbit_stew"}, \
    transformation:[1f,0f,0f,0f, 0f,0.866f,-0.5f,0f, 0f,0.5f,0.866f,0f, 0f,0f,0f,3f], \
    Rotation:[-110f,0f] \
}
$execute positioned $(pos) run summon item_display ~0.25 ~-0.25 ~0.3 { \
    item:{id:"minecraft:black_banner", \
    components:{"minecraft:banner_patterns":[{color:"light_blue",pattern:"flow"}]}}, \
    transformation:[1f,0f,0f,0f, 0f,0.866f,-0.5f,0f, 0f,0.5f,0.866f,0f, 0f,0f,0f,1.5f], \
    Rotation:[-110f,0f] \
}
$execute positioned $(pos) run summon text_display ~0.5 ~0.35 ~0.2 { \
    text:{text:"special",color:"gold"}, \
    Rotation:[70f,-30f], \
    background:0, \
    transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,2f], \
    alignment:"center" \
}
$execute positioned $(pos) run summon text_display ~0.1 ~-0.35 ~0.35 { \
    text:{text:"rabbit \nstew",color:"gold"}, \
    Rotation:[70f,-30f], \
    background:0, \
    transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,2f], \
    alignment:"center" \
}
$execute positioned $(pos) run summon item_display ~1.0 ~-0.25 ~ { \
    item:{id:"minecraft:black_banner"}, \
    transformation:[1f,0f,0f,0f, 0f,0.866f,-0.5f,0f, 0f,0.5f,0.866f,0f, 0f,0f,0f,1.5f], \
    Rotation:[70f,0f] \
}
