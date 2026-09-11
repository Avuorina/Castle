#> slot:reel/drum/spin/stop_left
#
# 左ボタンが押された合図で、左ドラムを減速(3)に遷移させる
# ドラム未導入の台では何もしない
#
# @within function slot:parts/button/push/left/update

    execute unless entity @n[type=item_display,tag=reel_drum_L,distance=..10] run return 0
    execute if score @s ReelDrumState_L matches 1..2 run scoreboard players set @s ReelDrumState_L 3
