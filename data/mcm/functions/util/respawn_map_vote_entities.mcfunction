kill @e[tag=MapVoteEntity]

summon minecraft:interaction 27.8125 2 84.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map_random"],response:true}
summon minecraft:interaction 28.8125 2 90.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map1"],response:true}
summon minecraft:interaction 28.8125 2 95.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map2"],response:true}
summon minecraft:interaction 28.8125 2 100.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map3"],response:true}
summon minecraft:interaction 28.8125 2 106.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map4"],response:true}
summon minecraft:interaction 28.8125 2 111.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map5"],response:true}
summon minecraft:interaction 28.8125 2 116.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map6"],response:true}

function mcm:lobby/voting/vote_displays

team join posters @e[tag=MapVoteEntity]