#> slot:money/depo/cannot
#
# 入金できない
#
# @within function slot:money/depo/

    tellraw @p {"text":"入金できません","color":"red"}
    scoreboard players reset $Money _
    scoreboard players reset $AFMoney _
    