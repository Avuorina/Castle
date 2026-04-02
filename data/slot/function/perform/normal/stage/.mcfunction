#> slot:perform/normal/stage/
#
# ステージチェンジ
#
# @within function slot:perform/normal/stage/change

## 40%で通常ステージ1
    execute if score $StageRandom _ matches 1..40 run data modify entity @s item.components.minecraft:custom_model_data.strings set value ["normal1"]

## 40%で通常ステージ2
    execute if score $StageRandom _ matches 41..80 run data modify entity @s item.components.minecraft:custom_model_data.strings set value ["normal2"]

## 20%で高確ステージ
    execute if score $StageRandom _ matches 81..100 run data modify entity @s item.components.minecraft:custom_model_data.strings set value ["High probability"]