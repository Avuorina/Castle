#> slot:perform/normal/stage/display/
#
# ステージ名表示
#
# @within function slot:perform/normal/stage/

## ステージ名を表示
    execute if score @s Stage matches 1 run data modify entity @s text set value "通常ステージ1"
    execute if score @s Stage matches 2 run data modify entity @s text set value "通常ステージ2"
    execute if score @s Stage matches 3 run data modify entity @s text set value "高確ステージ"

## スコアを設定
    scoreboard players set @s InStageDisplay 40