#> slot:reel/drum/tick/right
#
# 右ドラムリールの回転状態を1tick分進める（armor_standとして実行）
# 見た目のみを制御し、既存のSlotState/Result判定には一切影響しない
#
# ReelDrumState_R: 0停止 1加速 2定速 3減速 4着地確定
# ReelDrumSpeed_R : 1コマ進むまでのtick数（値が小さいほど速い）
#
# @within function slot:reel/drum/tick/

## ドラム未導入 or 停止中なら何もしない
    execute unless entity @n[type=item_display,tag=reel_drum_R,distance=..2] run return 0
    execute unless score @s ReelDrumState_R matches 1..4 run return 0

## 次のコマまでのtimerを消化
    scoreboard players remove @s ReelDrumTimer_R 1
    execute if score @s ReelDrumTimer_R matches 1.. run return 0

## --- ここから1コマ分進める ---

## 加速中：速度を上げ（tick数を減らし）、巡航速度に達したら定速へ
    execute if score @s ReelDrumState_R matches 1 run scoreboard players remove @s ReelDrumSpeed_R 1
    execute if score @s ReelDrumState_R matches 1 if score @s ReelDrumSpeed_R matches ..4 run scoreboard players set @s ReelDrumState_R 2

## 減速中：目標面に来ていれば着地確定、まだなら速度を落としていく
    execute if score @s ReelDrumState_R matches 3 if score @s ReelDrumSpin_R = @s ReelDrumTarget_R run scoreboard players set @s ReelDrumState_R 4
    execute if score @s ReelDrumState_R matches 3 unless score @s ReelDrumSpin_R = @s ReelDrumTarget_R run scoreboard players add @s ReelDrumSpeed_R 1
    execute if score @s ReelDrumState_R matches 3 if score @s ReelDrumSpeed_R matches 8.. run scoreboard players set @s ReelDrumSpeed_R 8

## 面indexを1進める（回転中のみ）。着地確定時は目標面へスナップ
    execute if score @s ReelDrumState_R matches 1..3 run scoreboard players add @s ReelDrumSpin_R 1
    execute if score @s ReelDrumState_R matches 1..3 if score @s ReelDrumSpin_R matches 20.. run scoreboard players set @s ReelDrumSpin_R 0
    execute if score @s ReelDrumState_R matches 4 run scoreboard players operation @s ReelDrumSpin_R = @s ReelDrumTarget_R

## 次のコマまでのtimerをセット
    scoreboard players operation @s ReelDrumTimer_R = @s ReelDrumSpeed_R

## 見た目を更新
    execute at @s run function slot:reel/drum/face/update_right

## 着地確定していたら停止状態へ
    execute if score @s ReelDrumState_R matches 4 run scoreboard players set @s ReelDrumState_R 0
