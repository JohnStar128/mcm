
#> Murderer friendly fire check
execute store result score $temp vars run data get storage mcm:game_state state.rules.murderer_friendly_fire
execute if score $temp vars matches 0 if entity @s[tag=murderer] on target if entity @s[tag=murderer] on attacker run advancement revoke @s only mcm:hit_detection/player_hit_someone
execute if score $temp vars matches 0 if entity @s[tag=murderer] on target if entity @s[tag=murderer] on attacker run return run scoreboard players reset $temp vars
scoreboard players reset $temp vars

#> They got a kill
scoreboard players add @s game_stats 1

#> Gunner shot innocent
execute if entity @s[tag=gunner] on target if entity @s[tag=innocent] on attacker run tag @s add shot_innocent
clear @s[tag=shot_innocent] *[custom_data~{gun:1b}]
clear @s[tag=shot_innocent] *[custom_data~{scrap:1b}]

execute at @s[tag=shot_innocent] run summon item ~ ~0.5 ~ {Tags:["temp_drop"],Item:{id:"stick",count:1b},PickupDelay:2}
data modify entity @e[type=item,tag=temp_drop,limit=1] Item set from storage mcm:items gun
data merge storage mcm:args {owner:{out:"entity @e[type=item,tag=temp_drop,limit=1] Item.components.custom_data.owner "}}
execute on attacker store result storage mcm:args owner.uuid int 1 run data get entity @s UUID[0]
function mcm:util/get_player_name with storage mcm:args owner
data remove storage mcm:args owner
tag @e[type=item,tag=temp_drop] remove temp_drop

execute at @s[tag=shot_innocent] run playsound entity.ghast.hurt master @a ~ ~ ~ 1 1.2
effect give @s[tag=shot_innocent] nausea 15 0 true
effect give @s[tag=shot_innocent] darkness 5 100 true
effect give @s[tag=shot_innocent] slowness 120 4 true
tellraw @s[tag=shot_innocent] [ \
    { \
        "translate":"mcm.gunner.innocentkill.ohno", \
        "color":"red", \
        "italic":true \
    }, \
    "\n", \
    { \
        "translate":"mcm.gunner.innocentkill.sins",\ 
        "color":"yellow", \
        "italic":true \
    } \
]

advancement revoke @s only mcm:hit_detection/player_hit_someone
