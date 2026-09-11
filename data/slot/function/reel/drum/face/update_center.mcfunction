#> slot:reel/drum/face/update_center
#
# 中ドラムの20面すべての表示位置を現在のSpinに合わせて更新する
# armor_standとして実行（atで自身の位置に移動済み）
#
# @within function slot:reel/drum/tick/center

## 現在のSpinをstorageへ（マクロ経由で各面から参照するため）
    execute store result storage slot:temp drum.spin int 1 run scoreboard players get @s ReelDrumSpin_C

## 20面それぞれの表示を更新
    execute as @e[type=item_display,tag=reel_drum_C,distance=..2] at @s run function slot:reel/drum/face/apply with storage slot:temp drum
