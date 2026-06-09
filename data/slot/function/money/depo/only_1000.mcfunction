#> slot:money/depo/only_1000
#
# 1000円札のみ入金できる
#
# @within function slot:money/depo/

execute as @a if score @s SlotID = $Temp SlotID run tellraw @s {"text":"10000円札以外を入金してください","color":"red"}
tag @s add CanOnlyInsertMoney
scoreboard players reset $AFMoney _
scoreboard players reset $Money _
scoreboard players reset $Temp SlotID
