#> slot:button/push/left/pushed
#
#
#
# @within advancement player:interact/left_button

tag @s add InteractedPlayer
execute if score @n[type=armor_stand,tag=slot_machine] SlotState matches 3 as @e[type=interaction,tag=slot_button,tag=button_L,sort=nearest,tag=ready] if function player:is_interacted at @s run function slot:parts/button/push/left/
tag @s remove InteractedPlayer

advancement revoke @s only player:interact/left_button