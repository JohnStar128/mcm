execute if score $queued CmdData >= $maxplayers GameRules run function mcm:lobby/queueing/reject_queue
execute if score $queued CmdData < $maxplayers GameRules run function mcm:lobby/queueing/queue