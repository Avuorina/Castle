#> slot:reel/tick
#
# 回転中のリールアニメーション（毎tick、armor_standとして実行）
#
# @within function slot:tick/

## tickカウンタを2でリセット（2tickごとのサイクル）
    execute if score @s SlotTick matches 2.. run scoreboard players set @s SlotTick 0

## 回転中でなければスキップ
    execute unless score @s SlotState matches 2 run return 0

## アニメーションカウンタを進める
    scoreboard players add @s SlotTick 1

## 2tickごとにリール表示を更新（回転してないリールはスキップ）
    execute if score @s SlotTick matches 1.. run function slot:reel/update/

## サウンド（4tickごとにカチカチ音）
    #execute if score @s SlotTick matches 1.. run execute at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 0.3 2