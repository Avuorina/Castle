#> slot:tick/
#
#
#
# @within main:tick

## アイテム判別＆ツール処理（プレイヤーごと）
    execute as @a at @s run function slot:tick/tools

## レバーが下げられた！リールスタート
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 1 run function slot:is_stanby
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 2 run function slot:is_stanby
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 3 run function slot:reel/tick
    execute as @e[type=armor_stand,tag=slot_machine] at @s if score @s SlotState matches 3 if score @s ButtonState matches 3 run function slot:reel/result/result_normal