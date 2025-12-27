# Wait'll John sees this
data modify storage mcm:game_state state.rules.min_players set value 1

data modify storage mcm:maps list[].active set value 0

data modify storage mcm:maps list[{name:"library"}].active set value 1
# data modify storage mcm:maps list[{name:"library2"}].active set value 1
data modify storage mcm:maps list[{name:"airship"}].active set value 1

data modify storage mcm:timers list[{name:"$vote_countdown"}].start set value 20 

function mcm:dev/shuffle_maps
