#> slot:reel/drum/spin/stop_center
#
# 中ボタンが押された合図で、中ドラムを停止待ち(3)に遷移させる（最大15tickで着地、減速はしない）
# ドラム未導入の台では何もしない
#
# @within function slot:parts/button/push/center/update

    execute unless entity @n[type=item_display,tag=reel_drum_C,distance=..3] run return 0
    execute if score @s ReelDrumState_C matches 1..2 run scoreboard players set @s ReelDrumStopWait_C 0
    execute if score @s ReelDrumState_C matches 1..2 run scoreboard players set @s ReelDrumState_C 3