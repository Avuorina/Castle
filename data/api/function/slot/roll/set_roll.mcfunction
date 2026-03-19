#> api:slot/set_roll
#
# 一番上の図柄から、リールを設定する
#
# @within function slot:reel/result/set

## 検証
    execute unless entity @s[type=armor_stand,tag=slot_machine] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"実行者が違います。"}]
    execute unless entity @s[type=armor_stand,tag=slot_machine] run return fail

## SlotPosから
    $scoreboard players set _ SlotPos_L $(l)
    $scoreboard players set _ SlotPos_C $(c)
    $scoreboard players set _ SlotPos_R $(r)

## 0なら20にしてみる
    execute if score _ SlotPos_L matches 0 run scoreboard players set _ SlotPos_L 20
    execute if score _ SlotPos_C matches 0 run scoreboard players set _ SlotPos_C 20
    execute if score _ SlotPos_R matches 0 run scoreboard players set _ SlotPos_R 20

## 真ん中に揃える
    scoreboard players remove _ SlotPos_L 1
    scoreboard players remove _ SlotPos_C 1
    scoreboard players remove _ SlotPos_R 1

## RESET
    data remove storage slot: symbol

## リールがあるか検証
    execute unless entity @n[type=item_display,tag=slot_reel_L_up,distance=..10] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"左リールが見つかりません。"}]
    execute unless entity @n[type=item_display,tag=slot_reel_L_up,distance=..10] run return fail
    execute unless entity @n[type=item_display,tag=slot_reel_C_up,distance=..10] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"中リールが見つかりません。"}]
    execute unless entity @n[type=item_display,tag=slot_reel_C_up,distance=..10] run return fail
    execute unless entity @n[type=item_display,tag=slot_reel_R_up,distance=..10] run tellraw @a [{"storage":global,"nbt":"Prefix.ERROR"},{"text":"右リールが見つかりません。"}]
    execute unless entity @n[type=item_display,tag=slot_reel_R_up,distance=..10] run return fail

## 近くのスロットを実行者として、アップデート
    scoreboard players operation @s SlotPos_L = _ SlotPos_L
    scoreboard players operation @s SlotPos_C = _ SlotPos_C
    scoreboard players operation @s SlotPos_R = _ SlotPos_R
    execute at @s run function slot:reel/update/

## RESET
    scoreboard players reset _ SlotPos_L
    scoreboard players reset _ SlotPos_C
    scoreboard players reset _ SlotPos_R