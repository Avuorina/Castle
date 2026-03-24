#> slot:button/push/right
#
# 右ボタンが押された
#
# @within function player:right_click

## 右のステータスを変える
    execute as @n[type=armor_stand,tag=slot_machine] if score @s SlotState matches 3 at @s run function slot:parts/button/push/right/update
    function slot:parts/button/place
    tag @s remove ready