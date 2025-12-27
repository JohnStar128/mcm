# Chairs in the lobby theaters

$summon block_display $(pos) {Tags:["theater_chair_display", "prop"], block_state:{Name:"red_wool"}, Rotation:[90f, 0f], transformation:[0.875f,0f,0f,-0.4375f, 0f,1f,0f,-0.984375f, 0f,0f,0.9375f,-0.46875f, 0f,0f,0f,1f]}
$execute positioned $(pos) positioned ~-0.05 ~-0.1 ~ run function mcm:util/interactable/new {data:"Tags:['theater_chair_interaction', 'prop'], response:1b, width:0.9, height:0.15, Rotation:[90f,90f]", fn:"mcm:props/mount {tag:$(tag)}"}
