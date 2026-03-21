#> slot:play/set_id
#
# ID割り振り
#
# @within function slot:install/init

## スロットIDを加算
    scoreboard players add $Global SlotID 1

## IDを保存
    scoreboard players operation @s SlotID = $Global SlotID