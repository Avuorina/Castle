#> slot:lazy/execute
#
# 実行
#
# @within function slot:lazy/interact

## レバー
    execute if score @s SlotState matches 0 if score @s LazyState matches 0 run function slot:parts/lever/pull

## ボタン
    execute if score @s SlotState matches 3 if score @s LazyState matches 1 run function slot:parts/button/push/left/update
    execute if score @s SlotState matches 3 if score @s LazyState matches 1 run tag @n[tag=slot_button,tag=button_L,tag=ready,type=interaction] remove ready
    execute if score @s SlotState matches 3 if score @s LazyState matches 2 run function slot:parts/button/push/center/update
    execute if score @s SlotState matches 3 if score @s LazyState matches 2 run tag @n[tag=slot_button,tag=button_C,tag=ready,type=interaction] remove ready
    execute if score @s SlotState matches 3 if score @s LazyState matches 3 run function slot:parts/button/push/right/update
    execute if score @s SlotState matches 3 if score @s LazyState matches 3 run tag @n[tag=slot_button,tag=button_R,tag=ready,type=interaction] remove ready

    execute if score @s SlotState matches 3 run function slot:parts/button/place

## 状態を＋１
    scoreboard players add @s LazyState 1
