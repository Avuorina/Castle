#> slot:button/push/center/update
#
#
#
# @within function slot:button/push/center/update

## スロットをまず止めるだろ?
    tag @s remove ReelingCenter

## 20面ドラムを減速へ（見た目のみ。ドラム未導入なら何もしない）
    function slot:reel_drum/spin/stop_center

## そしたらステータスを１増やす
    scoreboard players add @s ButtonState 1

## ボタンの表示を戻す
    execute as @n[type=item_display,tag=slot_button_display,tag=button_C,distance=..3] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["stanby"]

## 結果を抽出する
    execute store result storage slot: symbol.c int 1 run scoreboard players get @s Result_C

## OMDを解放
    function #oh_my_dat:please
    # アクセス
        data modify storage slot:perform temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Perform

## 結果による処理（停止ごとの演出ディスパッチ）
    function slot:perform/dispatch/on_stop with storage slot:perform