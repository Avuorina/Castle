#> slot:button/push/left
#
# 左ボタンが押された
#
# @within function player:right_click

## 左のステータスを変える
    execute as @n[type=armor_stand,tag=slot_machine] if score @s SlotState matches 3 at @s run function slot:button/push/left/update
    function slot:button/place
    tag @s remove ready