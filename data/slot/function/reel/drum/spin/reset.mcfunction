#> slot:reel/drum/spin/reset
#
# ドラムリールの回転状態を初期化する（1ゲーム開始時）
# ドラム未導入の台では何もしない
#
# @within function slot:reset

## ドラム未導入なら何もしない
    execute unless entity @n[type=item_display,tag=reel_drum,distance=..2] run return 0

## 状態を加速(1)にして、遅い速度(8tick/コマ)からスタート
    scoreboard players set @s ReelDrumState_L 1
    scoreboard players set @s ReelDrumState_C 1
    scoreboard players set @s ReelDrumState_R 1
    scoreboard players set @s ReelDrumSpeed_L 8
    scoreboard players set @s ReelDrumSpeed_C 8
    scoreboard players set @s ReelDrumSpeed_R 8
    scoreboard players operation @s ReelDrumTimer_L = @s ReelDrumSpeed_L
    scoreboard players operation @s ReelDrumTimer_C = @s ReelDrumSpeed_C
    scoreboard players operation @s ReelDrumTimer_R = @s ReelDrumSpeed_R
