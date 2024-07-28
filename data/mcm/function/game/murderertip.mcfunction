
execute as @a[tag=murderer,tag=!NoTip] run title @s subtitle {"translate":"mcm.tip.murderer","color" : "gold",  "with" : [{"keybind":"key.attack","color":"red"},{"keybind":"key.use","color":"red"}]}
execute as @a[tag=murderer,tag=!NoTip] run title @s title ""