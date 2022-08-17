execute if score $run test matches 1 run scoreboard players remove $asheadpos test 1
execute if score $run test matches 1 store result entity @e[tag=as,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get $asheadpos test
execute if score $run test matches 1 if score $asheadpos test matches -90 run scoreboard players set $run test 0
execute if score $run test matches 0 if score $asheadpos test matches -90 run scoreboard players set $asheadpos test -23
execute if score $run test matches 0 store result entity @e[tag=as,limit=1,sort=nearest] Rotation[1] float 1 run scoreboard players get $asheadpos test