#> slot:perform/normal/stage/change
#
# 通常時のステージ変更
#
# @within function slot:perform/normal/update

## 乱数発生！
    execute store result score $StageRandom _ run random value 1..100

## ステージ変更
    execute as @n[tag=Stage] run function slot:perform/normal/stage/

## 今のステージを保存
    scoreboard players operation $BeforeStage _ = @s Stage
    execute if score $StageRandom _ matches 1..40 run scoreboard players set $Stage _ 1
    execute if score $StageRandom _ matches 41..80 run scoreboard players set $Stage _ 2
    execute if score $StageRandom _ matches 81..100 run scoreboard players set $Stage _ 3

## もしステージが変わってなかったらもう一回
    execute if score $BeforeStage _ = $Stage _ run function slot:perform/normal/stage/change
    execute if score $BeforeStage _ = $Stage _ run return fail

## ステージを解放
    scoreboard players operation @s Stage = $Stage _

## ステージ名表示
    execute as @n[tag=Stage] run function slot:perform/normal/stage/display/

## RESET
    scoreboard players reset $StageRandom _
    scoreboard players reset $BeforeStage _
    scoreboard players reset $Stage _