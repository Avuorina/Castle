#> slot:play/set_id
#
# ID割り振り
#
# @within function slot:install/init

## IDを保存
    scoreboard players operation @s SlotID = $Global SlotID

## スロットIDを加算
    scoreboard players add $Global SlotID 1

## ほかのパーツにも適用
    scoreboard players operation @e[tag=slot_new,distance=..5] SlotID = @s SlotID