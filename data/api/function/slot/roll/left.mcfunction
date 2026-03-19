#> api:slot/roll/left
#
# 左リールを思うがままさ。へへへｗ
#
# @within function slot:button/push/left

## 検証
    execute unless entity @s[type=armor_stand,tag=slot_machine] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が違います。"}]
    execute unless entity @s[type=armor_stand,tag=slot_machine] run return fail

## SlotPosから
    $scoreboard players set _ SlotPos_L $(l)

## 0なら20にしてみる
    execute if score _ SlotPos_L matches 0 run scoreboard players set _ SlotPos_L 20

## 真ん中に揃える
    scoreboard players remove _ SlotPos_L 1

## RESET
    data remove storage slot: symbol

## リールがあるか検証
    execute unless entity @n[type=item_display,tag=slot_reel_L_up,distance=..10] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"左リールが見つかりません。"}]
    execute unless entity @n[type=item_display,tag=slot_reel_L_up,distance=..10] run return fail

## スロットを実行者として、アップデート
    scoreboard players operation @s SlotPos_L = _ SlotPos_L

## RESET
    scoreboard players reset _ SlotPos_L