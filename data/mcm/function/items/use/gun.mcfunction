data modify storage mcm:args components set from storage mcm:items gun2.components
execute if items entity @s weapon.* stick[custom_data~{gun2:1b}] run data modify storage mcm:args components set from storage mcm:items gun.components
execute if items entity @s weapon.mainhand stick[custom_data~{gun:1b}] run data merge storage mcm:args {slot:"weapon.mainhand"}
execute if items entity @s weapon.offhand stick[custom_data~{gun:1b}] run data merge storage mcm:args {slot:"weapon.offhand"}

function mcm:items/modify_slot with storage mcm:args
data remove storage mcm:args components
data remove storage mcm:args slot

#> Shot
execute at @s facing ^ ^ ^14 positioned 0.0 0 0.0 run summon arrow ^ ^ ^7 { \
    NoGravity:1b, \
    Tags:["shot","new"], \
    Passengers:[{ \
        id:"item_display", \
        Tags:["bullet","new"], \
        item:{id:"diamond_hoe",count:1,components:{item_model:"misc/bullet"}}, \
        transformation:[0.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.0, 0.0, 0.8, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0], \
        interpolation_duration:1 \
    }] \
}
data modify entity @e[type=arrow,tag=new,limit=1] Owner set from entity @s UUID
data modify storage mcm:temp shot.pos set from entity @e[type=arrow,tag=new,limit=1] Pos
data modify storage mcm:temp shot.rot set from entity @s Rotation
execute at @s positioned ~ ~1.5 ~ run tp @e[type=arrow,tag=new] ^ ^ ^
data modify entity @e[type=arrow,tag=new,limit=1] Motion set from storage mcm:temp shot.pos
data modify entity @e[type=arrow,tag=new,limit=1] Rotation set from storage mcm:temp shot.rot
data modify entity @e[type=item_display,tag=new,limit=1] Rotation set from storage mcm:temp shot.rot
data remove storage mcm:temp shot

#> Sound and recoil
execute at @s run playsound gun_shoot master @a ~ ~ ~ 2 1
execute at @s run tp @s ~ ~ ~ ~ ~-3

#> Kill the bullet after it times out
execute store result storage mcm:args bullet_timer.id int 1 run function mcm:util/next_prng
execute as @e[type=arrow,tag=new,limit=1] run function mcm:items/cleanup/bullet_id with storage mcm:args bullet_timer

#> Reload sound
execute store result storage mcm:args reload_timer.id int 1 run function mcm:util/next_prng
function mcm:items/cleanup/reload_id with storage mcm:args reload_timer

tag @e[type=arrow,tag=new] remove new
tag @e[type=item_display,tag=bullet,tag=new] remove new

advancement revoke @s only mcm:items/gun
