
#> Respawns lobby villagers if SOMEONE kills them

tp @e[type=villager,tag=LobbyVillager] 0 -100 0

kill @e[type=villager,tag=LobbyVillager]

execute unless entity @e[type=villager,tag=Usher1] run summon villager 16 1 104 {VillagerData:{profession:"librarian"},NoAI:1,Tags:["Usher","LobbyVillager","Usher1"],CustomName:'{"translate":"mcm.lobby.usher"}',Rotation:[-90.0f,0.0f],Silent:1b}
execute unless entity @e[type=villager,tag=Usher2] run summon villager 11 1 104 {VillagerData:{profession:"librarian"},NoAI:1,Tags:["Usher","LobbyVillager","Usher2"],CustomName:'{"translate":"mcm.lobby.usher"}',Rotation:[90.0f,0.0f],Silent:1b}

execute unless entity @e[type=villager,tag=credits_usher] run summon villager -8 -38 165 {VillagerData:{profession:"librarian"},NoAI:1,Tags:["credits_usher","LobbyVillager"],CustomName:'{"translate":"mcm.lobby.usher"}',Rotation:[90.0f,0.0f],Silent:1b}