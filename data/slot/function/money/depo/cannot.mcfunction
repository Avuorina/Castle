#> slot:money/depo/cannot
#
# 入金できない
#
# @within function slot:money/depo/

execute as @a if score @s SlotID = $Temp SlotID run tellraw @s {"text":"入金できません","color":"red"}
tag @s add CanNotInsertMoney
scoreboard players reset $Money _
scoreboard players reset $AFMoney _
scoreboard players reset $Temp SlotID
    