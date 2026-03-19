#> indev:display_score
#
# スコアの表示
#   
# @public

## 方向（Directionスコア → 日本語の方角に変換してstorageに保存）
    data modify storage display: Direction set value "？"
    execute if score @s Direction matches 0 run data modify storage display: Direction set value "北"
    execute if score @s Direction matches 90 run data modify storage display: Direction set value "東"
    execute if score @s Direction matches 180 run data modify storage display: Direction set value "南"
    execute if score @s Direction matches -90 run data modify storage display: Direction set value "西"

## アクションバーに表示
    title @s actionbar ["",{"text":"方角: ","color":"gray"},{"storage":"display:","nbt":"Direction","color":"aqua"},{"text":" | 所持金: ","color":"gray"},{"score":{"name":"@s","objective":"Yen"},"color":"white",bold:true},{"text":"円","color":"gold",bold:false}]