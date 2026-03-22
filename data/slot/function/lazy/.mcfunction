#> slot:lazy/
#
# 怠け者カスタム
#
# @public

tag @s add InteractedPlayer
execute as @n[type=interaction,tag=slot_lazy] if function player:is_interacted at @s run function slot:lazy/interact
tag @s remove InteractedPlayer

advancement revoke @s only player:interact/lazy