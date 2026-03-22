#> slot:point/tick
#
# ポイント加算中
#
# @within function slot:point/

## ポイント加算する

    scoreboard players remove @s PointIn 1
    scoreboard players add @s Point 1
    execute if score @s PointIn matches 0 run scoreboard players set @s InPointIn 0
    function slot:point/update

## 終わったらリセット
    execute if score @s InPointIn matches 1 run return fail
    scoreboard players reset @s PointIn
