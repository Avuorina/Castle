#> api:slot/roll/center
#
# 中リールを思うがままさ。へへへｗ
#
# @within function slot:button/push/center

## 検証
    execute unless entity @s[type=armor_stand,tag=slot_machine] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が違います。"}]
    execute unless entity @s[type=armor_stand,tag=slot_machine] run return fail

## SlotPosから
    $scoreboard players set _ SlotPos_C $(c)

## 0なら20にしてみる
    execute if score _ SlotPos_C matches 0 run scoreboard players set _ SlotPos_C 20

## 真ん中に揃える
    scoreboard players remove _ SlotPos_C 1

## RESET
    data remove storage slot: symbol

## リールがあるか検証
    execute unless entity @n[type=item_display,tag=slot_reel_C_up,distance=..10] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"中リールが見つかりません。"}]
    execute unless entity @n[type=item_display,tag=slot_reel_C_up,distance=..10] run return fail

## スロットを実行者として、アップデート
    scoreboard players operation @s SlotPos_C = _ SlotPos_C

## RESET
    scoreboard players reset _ SlotPos_C