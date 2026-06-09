#> slot:money/depo/only_1000
#
# 1000円札のみ入金できる
#
# @within function slot:money/depo/

tellraw @a {"text":"10000円札以外を入金してください","color":"red"}
tag @s add CanOnlyInsertMoney
scoreboard players reset $AFMoney _
scoreboard players reset $Money _
scoreboard players reset $Temp SlotID
