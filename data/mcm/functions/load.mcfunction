# Make sure 0,0 is loaded, this is where all the ✨ magic ✨ happens
setworldspawn 0 0 0
forceload add 0 0

# First time load only (ideally), spawn the marker entity used to hold game flags and whatnot
execute unless entity @e[type=marker,tag=Brain] run summon marker 0 0 0 {Tags:["Brain"]}


# Scoreboards
scoreboard objectives add CmdData dummy
scoreboard players set $one CmdData 1