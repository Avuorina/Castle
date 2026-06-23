#> slot:button/push/right/update
#
#
#
# @within function slot:button/push/right/update

## スロットをまず止めるだろ?
    tag @s remove ReelingRight

## そしたらステータスを１増やす
    scoreboard players add @s ButtonState 1

## ボタンの表示を戻す
    execute as @n[type=item_display,tag=slot_button_display,tag=button_R,distance=..3] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["stanby"]

## 結果を抽出する
    execute store result storage slot: symbol.r int 1 run scoreboard players get @s Result_R

    function api:slot/roll/right with storage slot: symbol
    function slot:reel/update/right/set
    function slot:reel/update/right/lookup with storage slot:temp pos.right
    execute as @n[tag=slot_reel_R_up] at @s run function slot:reel/update/right/ with storage slot:temp reel.right

## ストレージをクリア
    #data remove storage slot:temp pos.right
    #data remove storage slot:temp reel.right

## OMDを解放    
    function #oh_my_dat:please
    # アクセス
        data modify storage slot:perform temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Perform

## 結果による処理（停止ごとの演出ディスパッチ）
    function slot:perform/dispatch/on_stop with storage slot:perform

## reset
    data remove storage slot:perform temp