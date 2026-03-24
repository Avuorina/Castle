#> slot:lever/
#
#
#
# @within advancement player:interact/lever

tag @s add InteractedPlayer
execute as @n[type=interaction,tag=slot_lever] if function player:is_interacted at @s if score @n[type=armor_stand,tag=slot_machine] SlotState matches 0 run function slot:parts/lever/pull
tag @s remove InteractedPlayer

advancement revoke @s only player:interact/lever