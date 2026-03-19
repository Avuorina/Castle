#> slot:button/push/left/update
#
#
#
# @within function slot:button/push/left/update

## スロットをまず止めるだろ?
    tag @s remove ReelingLeft

## そしたらステータスを１増やす
    scoreboard players add @s ButtonState 1

## ボタンの表示を戻す
    execute as @n[type=item_display,tag=slot_button_display,tag=button_L,distance=..3] run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["stanby"]

## 結果を抽出する
    execute store result storage slot: symbol.l int 1 run scoreboard players get @s Result_L
    function api:slot/roll/left with storage slot: symbol
    function slot:reel/update/left/set
    function slot:reel/update/left/lookup with storage slot:temp pos.left
    execute as @n[tag=slot_reel_L_up] at @s run function slot:reel/update/left/ with storage slot:temp reel.left

## ストレージをクリア
    #data remove storage slot:temp pos.left
    #data remove storage slot:temp reel.left

## 結果による処理
