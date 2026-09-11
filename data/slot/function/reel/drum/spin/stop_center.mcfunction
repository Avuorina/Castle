#> slot:reel/drum/spin/stop_center
#
# 中ボタンが押された合図で、中ドラムを減速(3)に遷移させる
# ドラム未導入の台では何もしない
#
# @within function slot:parts/button/push/center/update

    execute unless entity @n[type=item_display,tag=reel_drum_C,distance=..2] run return 0
    execute if score @s ReelDrumState_C matches 1..2 run scoreboard players set @s ReelDrumState_C 3
