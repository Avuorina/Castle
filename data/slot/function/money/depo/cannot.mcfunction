#> slot:money/depo/cannot
#
# 入金できない
#
# @within function slot:money/depo/

function api:slot/get_player
execute as @a[tag=linked_player] run tellraw @s {"text":"入金できません","color":"red"}
tag @a remove linked_player
tag @s add CanNotInsertMoney
scoreboard players reset $Money _
scoreboard players reset $AFMoney _
scoreboard players reset $Temp SlotID