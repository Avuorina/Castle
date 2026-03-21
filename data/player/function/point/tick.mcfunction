#> player:point/tick
#
# ポイントをレベルに反映
#
# @within function player:point/add

## ポイントの割合を計算
    scoreboard players operation @s PointRatio = @s Point
    scoreboard players operation @s PointRatio *= $607 Const
    scoreboard players operation @s PointRatio /= $600 Const

## ポイントバー更新
    execute unless score @s AddPoint = @s PointRatio run function player:point/add