#> slot:button/press
#
# ボタンが押された → 最寄りの回転中の台でリール停止
#
# @within function slot:button/tick

## 最寄りのスロット台（armor_stand）を取得
    # 回転中（SlotState=1）の台のみ対象
    execute as @n[type=armor_stand,tag=slot_machine,distance=..3] if score @s SlotState matches 1 run function slot:reel/stop

## サウンド（ボタン音）
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.2
