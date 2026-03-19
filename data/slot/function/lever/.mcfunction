#> slot:lever/
#
#
#
# @within advancement player:interact/lever

tag @s add InteractedPlayer
execute if score @n[type=armor_stand,tag=slot_machine] SlotState matches 0 as @e[type=interaction,tag=slot_lever,sort=nearest] if function player:is_interacted at @s run function slot:lever/pull
tag @s remove InteractedPlayer

advancement revoke @s only player:interact/lever