#> slot:reel_drum/face/update_center
#
# ドラムリールの中央面の表示を更新する
#
# @within function slot:reel_drum/tick/center

## 現在のspinをstorageへ(マクロ軽油で各面から参照するため)
    execute store result storage slot:temp drum.spin int 1 run scoreboard players get @s ReelDrumSpin_C

## 20面それぞれの表示を更新
    execute as @e[type=item_display,tag=reel_drum_C,distance=..2] at @s run function slot:reel_drum/face/apply with storage slot:temp drum