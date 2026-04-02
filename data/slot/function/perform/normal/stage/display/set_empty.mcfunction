#> slot:perform/normal/stage/display/set_empty
#
# ステージ名表示を消す
#
# @within function slot:tick/

## ステージ名表示を消す
    data modify entity @s[scores={InStageDisplay=0}] text set value ""

## InStageDisplayを1減らす
    scoreboard players remove @s InStageDisplay 1