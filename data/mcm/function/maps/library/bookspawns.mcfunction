#>Selects (currently) 5 of the bookspawn armorstands to have an Overdue book in their Helmet slot for the Basement Unlock
execute as @e[type=armor_stand,tag=bookspawn,tag=!hasbook,limit=5,sort=random] run tag @s add has_book
execute as @e[type=armor_stand,tag=bookspawn,tag=has_book] run data modify entity @s equipment.head set from storage mcm:items library_book
#> Prevent taking books until game starts
execute as @e[type=armor_stand,tag=bookspawn,tag=has_book] run data modify entity @s DisabledSlots set value 4096

#Armor stand locations
#995.3 109.3 993.5
#983.7 109.3 1009.5
#975.7 109.3 993.5
#954.3 109.3 1009.5
#952.7 109.3 990.5
#983.5 120.3 1008.7
#987.5 120.3 992.3
#984.5 120.3 1012.7
#961.5 131.3 1009.7
#957.5 131.3 1014.3
#965.3 131.3 1026.5
#951.7 131.3 1023.5
#958.5 131.3 989.7
#953.5 131.3 976.7
#966.5 131.3 973.7
#944.5 142.3 971.3
#942.5 142.3 1023.7
#943.5 142.3 1031.3