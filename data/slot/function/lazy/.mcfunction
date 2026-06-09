#> slot:lazy/
#
# 怠け者カスタム
#
# @public

## スロットとリンクさせる
    tag @s add InteractedPlayer
    execute as @n[type=interaction,tag=slot_lazy] \
    if \
    function player:is_interacted \
    at @s \
    if score @n[type=armor_stand,tag=slot_machine] SlotState matches 0..3 run \
    function player:link/lazy
    
tag @s remove InteractedPlayer

advancement revoke @s only player:interact/lazy