#> slot:money/depo/only_1000
#
# 1000円札のみ入金できる
#
# @within function slot:money/depo/

function api:slot/get_player
execute as @a[tag=linked_player] run tellraw @s {"text":"10000円札以外を入金してください","color":"red"}
tag @a remove linked_player
tag @s add CanOnlyInsertMoney
scoreboard players reset $AFMoney _
scoreboard players reset $Money _
scoreboard players reset $Temp SlotID