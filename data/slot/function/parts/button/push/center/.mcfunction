#> slot:button/push/center
#
# 中ボタンが押された
#
# @within advancment player:interact/center_button


## 中のステータスを変える
    execute as @n[type=armor_stand,tag=slot_machine] if score @s SlotState matches 3 at @s run function slot:parts/button/push/center/update
    function slot:parts/button/place
    tag @s remove ready