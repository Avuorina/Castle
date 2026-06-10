#> slot:lever/pull
#
# レバーが引かれた
#
# @within function player:link/
# @context @s = slot_machine armor_stand
## メダルを３枚支払い
    execute if entity @s[tag=!Replay] run function slot:money/pay
    execute if entity @s[tag=Fail] run return fail

## リプレイタグを消しておく
    tag @s[tag=Replay] remove Replay

## ゲームカウント
    scoreboard players add @s GameCnt 1

## SlotStateを1(スタンバイ)にする
    execute if score @s SlotState matches 0 run \
    scoreboard players set @s SlotState 1

## サウンド（レバー音）
    playsound minecraft:block.lever.click player @a ~ ~ ~ 1 0.8
