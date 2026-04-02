#> slot:money/depo/only_1000
#
# 1000円札のみ入金できる
#
# @within function slot:money/depo/

    tellraw @p {"text":"10000円札以外を入金してください","color":"red"}
    scoreboard players reset $AFMoney _
    scoreboard players reset $Money _
