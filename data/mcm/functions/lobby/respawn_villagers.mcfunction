
#> Respawns lobby villagers if SOMEONE kills them

execute unless entity @e[type=villager,tag=Usher1] run summon villager 16 1 104 {VillagerData:{profession:"librarian"},NoAI:1,Tags:["Usher","Usher1"],CustomName:'{"translate":"mcm.lobby.usher"}',Rotation:[-90.0f,0.0f]}
execute unless entity @e[type=villager,tag=Usher2] run summon villager 11 1 104 {VillagerData:{profession:"librarian"},NoAI:1,Tags:["Usher","Usher2"],CustomName:'{"translate":"mcm.lobby.usher"}',Rotation:[90.0f,0.0f]}

execute unless entity @e[type=villager,tag=credits_usher] run summon villager -8 -38 165 {VillagerData:{profession:"librarian"},NoAI:1,Tags:["credits_usher"],CustomName:'{"translate":"mcm.lobby.usher"}',Rotation:[90.0f,0.0f]}