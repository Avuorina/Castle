#> slot:lever/pull
#
# レバーが引かれた
#
# @within function player:right_click

## SlotStateを1(スタンバイ)にする
    execute as @n[type=armor_stand,tag=slot_machine] if score @s SlotState matches 0 run scoreboard players set @s SlotState 1

## サウンド（レバー音）
    playsound minecraft:block.lever.click player @a ~ ~ ~ 1 0.8