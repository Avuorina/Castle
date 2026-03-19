#> player:is_interacted
#
# interactionにインタラクトした相手の場合分け
#
# @within advancement player:interact

tag @s add InteractedPlayer
execute as @e[type=interaction,tag=slot_lever,sort=nearest] if function player:is_interacted at @s run function slot:lever/pull
tag @s remove InteractedPlayer

advancement revoke @s only player:interact