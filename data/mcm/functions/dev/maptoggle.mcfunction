
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""

#> Libraru
execute if entity @e[type=marker,tag=Library,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/library"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Library","color":"white"}]
execute if entity @e[type=marker,tag=Library,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/library"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Library","color":"white"}]

#> Airship
execute if entity @e[type=marker,tag=Airship,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/airship"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Airship","color":"white"}]
execute if entity @e[type=marker,tag=Airship,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/airship"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Airship","color":"white"}]

#> Vinyard
execute if entity @e[type=marker,tag=Vineyard,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/vineyard"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Vineyard","color":"white"}]
execute if entity @e[type=marker,tag=Vineyard,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/vineyard"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Vineyard","color":"white"}]

#> Launchpad
execute if entity @e[type=marker,tag=Launchpad,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/launchpad"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Launchpad","color":"white"}]
execute if entity @e[type=marker,tag=Launchpad,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/launchpad"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Launchpad","color":"white"}]

#> Cyberpunk
execute if entity @e[type=marker,tag=Cyberpunk,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/cyberpunk"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Cyberpunk","color":"white"}]
execute if entity @e[type=marker,tag=Cyberpunk,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/cyberpunk"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Cyberpunk","color":"white"}]

#> Riverboat
execute if entity @e[type=marker,tag=Riverboat,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/riverboat"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Riverboat","color":"white"}]
execute if entity @e[type=marker,tag=Riverboat,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/riverboat"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Riverboat","color":"white"}]

#> Industry
execute if entity @e[type=marker,tag=Industry,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/industry"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Industry","color":"white"}]
execute if entity @e[type=marker,tag=Industry,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/industry"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Industry","color":"white"}]

#> Train
execute if entity @e[type=marker,tag=Train,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/train"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Train","color":"white"}]
execute if entity @e[type=marker,tag=Train,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/train"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Train","color":"white"}]

#> Cabin
execute if entity @e[type=marker,tag=Cabin,tag=!disabled] run tellraw @s [{"text":"[✔]","color":"dark_green"}," ",{"text":"[✖]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/cabin"},"hoverEvent":{"action":"show_text","contents":["Click to Disable"]}}, {"text":"  Cabin","color":"white"}]
execute if entity @e[type=marker,tag=Cabin,tag=disabled] run tellraw @s [{"text":"[✔]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/cabin"},"hoverEvent":{"action":"show_text","contents":["Click to Enable"]}}," ",{"text":"[✖]","color":"dark_red"}, {"text":"  Cabin","color":"white"}]

tellraw @s ["",{"text":"[Enable All]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/enable_all"},"hoverEvent":{"action":"show_text","contents":["Enable All"]}}," ",{"text":"[Disable All]","color":"dark_red","insertion":"Disable All","clickEvent":{"action":"run_command","value":"/function mcm:dev/toggle/disable_all"},"hoverEvent":{"action":"show_text","contents":[]}}]