#> slot:reel/drum/tick/center
#
# 中ドラムリールの回転状態を1tick分進める（armor_standとして実行）
# 見た目のみを制御し、既存のSlotState/Result判定には一切影響しない
#
# ReelDrumState_C: 0停止 1加速 2定速 3減速 4着地確定
# ReelDrumSpeed_C : 1コマ進むまでのtick数（値が小さいほど速い）
#
# @within function slot:reel/drum/tick/

## ドラム未導入 or 停止中なら何もしない
    execute unless entity @n[type=item_display,tag=reel_drum_C,distance=..2] run return 0
    execute unless score @s ReelDrumState_C matches 1..4 run return 0

## 次のコマまでのtimerを消化
    scoreboard players remove @s ReelDrumTimer_C 1
    execute if score @s ReelDrumTimer_C matches 1.. run return 0

## --- ここから1コマ分進める ---

## 加速中：速度を上げ（tick数を減らし）、巡航速度に達したら定速へ
    execute if score @s ReelDrumState_C matches 1 run scoreboard players remove @s ReelDrumSpeed_C 1
    execute if score @s ReelDrumState_C matches 1 if score @s ReelDrumSpeed_C matches ..4 run scoreboard players set @s ReelDrumState_C 2

## 減速中：目標面に来ていれば着地確定、まだなら速度を落としていく
    execute if score @s ReelDrumState_C matches 3 if score @s ReelDrumSpin_C = @s ReelDrumTarget_C run scoreboard players set @s ReelDrumState_C 4
    execute if score @s ReelDrumState_C matches 3 unless score @s ReelDrumSpin_C = @s ReelDrumTarget_C run scoreboard players add @s ReelDrumSpeed_C 1
    execute if score @s ReelDrumState_C matches 3 if score @s ReelDrumSpeed_C matches 8.. run scoreboard players set @s ReelDrumSpeed_C 8

## 面indexを1進める（回転中のみ）。着地確定時は目標面へスナップ
    execute if score @s ReelDrumState_C matches 1..3 run scoreboard players add @s ReelDrumSpin_C 1
    execute if score @s ReelDrumState_C matches 1..3 if score @s ReelDrumSpin_C matches 20.. run scoreboard players set @s ReelDrumSpin_C 0
    execute if score @s ReelDrumState_C matches 4 run scoreboard players operation @s ReelDrumSpin_C = @s ReelDrumTarget_C

## 次のコマまでのtimerをセット
    scoreboard players operation @s ReelDrumTimer_C = @s ReelDrumSpeed_C

## 見た目を更新
    execute at @s run function slot:reel/drum/face/update_center

## 着地確定していたら停止状態へ
    execute if score @s ReelDrumState_C matches 4 run scoreboard players set @s ReelDrumState_C 0
