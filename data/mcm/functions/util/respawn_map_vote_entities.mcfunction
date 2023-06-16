kill @e[tag=MapVoteEntity]

summon minecraft:interaction 27.8125 2 84.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map_random"],response:true}
summon minecraft:interaction 28.8125 2 90.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map1"],response:true}
summon minecraft:interaction 28.8125 2 95.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map2"],response:true}
summon minecraft:interaction 28.8125 2 100.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map3"],response:true}
summon minecraft:interaction 28.8125 2 106.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map4"],response:true}
summon minecraft:interaction 28.8125 2 111.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map5"],response:true}
summon minecraft:interaction 28.8125 2 116.0 {width:2,height:3,Tags:["MapVoteEntity", "vote_counter", "map6"],response:true}

summon text_display 26.25 5.2 84.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"random"},"color":"#FFE700"}]',billboard:"center",Tags:["map_random","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 90.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map1"},"color":"#FFE700"}]',billboard:"center",Tags:["map1","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 95.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map2"},"color":"#FFE700"}]',billboard:"center",Tags:["map2","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 100.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map3"},"color":"#FFE700"}]',billboard:"center",Tags:["map3","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 106.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map4"},"color":"#FFE700"}]',billboard:"center",Tags:["map4","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 111.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map5"},"color":"#FFE700"}]',billboard:"center",Tags:["map5","VoteDisplay","MapVoteEntity"]}
summon text_display 27.25 5.2 116.0 {text:'[{"translate":"mcm.lobby.vote"},{"score":{"objective":"vote_count","name":"map6"},"color":"#FFE700"}]',billboard:"center",Tags:["map6","VoteDisplay","MapVoteEntity"]}

team join posters @e[tag=MapVoteEntity]