#> slot:tick/
#
#
#
# @within main:tick

## アイテム判別＆ツール処理（プレイヤーごと）
    execute as @a at @s run function slot:tick/tools

## スロットタイマー
    execute as @e[scores={SlotTimer=0..}] at @s run scoreboard players add @s SlotTimer 1

## レバーが下げられた！リールスタート
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 1 run function slot:is_stanby
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 2 run function slot:is_stanby
    # レバーアニメーション
        execute as @e[type=item_display,tag=slot_lever_display] at @s if score @s SlotTimer matches 0.. run function slot:lever/animation
## 回転！
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 3 run function slot:reel/tick
## 結果を表示
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 3 if score @s ButtonState matches 3 run function slot:reel/result/result_normal
## 払い出し
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s InPayout matches 1 run function slot:money/payout/tick