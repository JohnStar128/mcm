bossbar add gamedisplay ""
bossbar set gamedisplay color green
execute store result bossbar gamedisplay max run scoreboard players get $gametime CmdData
execute store result bossbar gamedisplay value run scoreboard players get $gametime CmdData