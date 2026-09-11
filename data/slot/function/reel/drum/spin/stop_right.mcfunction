#> slot:reel/drum/spin/stop_right
#
# 右ボタンが押された合図で、右ドラムを減速(3)に遷移させる
# ドラム未導入の台では何もしない
#
# @within function slot:parts/button/push/right/update

    execute unless entity @n[type=item_display,tag=reel_drum_R,distance=..10] run return 0
    execute if score @s ReelDrumState_R matches 1..2 run scoreboard players set @s ReelDrumState_R 3
