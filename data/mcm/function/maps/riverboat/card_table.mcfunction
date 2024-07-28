#> Executes when you click the card table
execute if items entity @s weapon.* stick[custom_data~{riverboat_card:1b}] run return run function mcm:maps/riverboat/add_card
execute unless items entity @s weapon.mainhand * run return run function mcm:maps/riverboat/remove_card
