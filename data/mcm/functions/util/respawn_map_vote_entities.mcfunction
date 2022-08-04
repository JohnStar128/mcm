kill @e[tag=MapVoteEntity]

summon villager 27.5 2 89.5 {Invisible:1b,Invulnerable:1b,Tags:["map1","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 90.0 {Invisible:1b,Invulnerable:1b,Tags:["map1","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 90.5 {Invisible:1b,Invulnerable:1b,Tags:["map1","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 27.5 2 94.5 {Invisible:1b,Invulnerable:1b,Tags:["map2","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 95.0 {Invisible:1b,Invulnerable:1b,Tags:["map2","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 95.5 {Invisible:1b,Invulnerable:1b,Tags:["map2","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 27.5 2 99.5 {Invisible:1b,Invulnerable:1b,Tags:["map3","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 100.0 {Invisible:1b,Invulnerable:1b,Tags:["map3","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 100.5 {Invisible:1b,Invulnerable:1b,Tags:["map3","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 27.5 2 105.5 {Invisible:1b,Invulnerable:1b,Tags:["map4","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 106.0 {Invisible:1b,Invulnerable:1b,Tags:["map4","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 27.5 2 106.5 {Invisible:1b,Invulnerable:1b,Tags:["map4","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon villager 26.5 2 83.5 {Invisible:1b,Invulnerable:1b,Tags:["map_random","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 26.5 2 84.0 {Invisible:1b,Invulnerable:1b,Tags:["map_random","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}
summon villager 26.5 2 84.5 {Invisible:1b,Invulnerable:1b,Tags:["map_random","MapVoteEntity"],NoAI:1,Silent:1b,ActiveEffects:[{Id:14,Amplifier:100,Duration:999999,ShowParticles:0b}]}

summon armor_stand 27.5 5 90.0 {Invisible:1b,Marker:1b,Tags:["map1","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 27.5 5 95.0 {Invisible:1b,Marker:1b,Tags:["map2","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 27.5 5 100.0 {Invisible:1b,Marker:1b,Tags:["map3","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 27.5 5 106.0 {Invisible:1b,Marker:1b,Tags:["map4","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}
summon armor_stand 26.5 5 84.0 {Invisible:1b,Marker:1b,Tags:["map_random","VoteDisplay","MapVoteEntity"],CustomName:"{\"text\":\"Current votes: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"CmdData\"}}]}",CustomNameVisible:1b}

team join posters @e[tag=MapVoteEntity]