#> slot:perform/dispatch/on_lever
#
# レバーオン時に発動する演出ども
#
# @within function slot:reel/result/set_normal

    execute if score @s PerformScenario matches 1 run tellraw @a[team=Debug] [{"text":"[演出] 弱予告","color":"gray"}]
    execute if score @s PerformScenario matches 2 run tellraw @a[team=Debug] [{"text":"[演出] 中予告","color":"aqua"}]
    execute if score @s PerformScenario matches 3 run tellraw @a[team=Debug] [{"text":"[演出] 強予告！","color":"gold"}]
    execute if score @s PerformScenario matches 5 run tellraw @a[team=Debug] [{"text":"[演出] カットイン!?","color":"light_purple"}]

## 回転中アニメを使うシナリオはタイマー始動
    execute if score @s PerformScenario matches 2.. run scoreboard players set @s PerformTimer 1

#[TODO] ここで item_display / text_display の custom_model_data 切替などの本演出を実装する
