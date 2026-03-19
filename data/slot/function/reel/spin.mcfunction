#> slot:reel/spin
#
# レバーON → 内部抽選 → リール回転開始
# armor_standとして実行される
#
# @within function slot:lever

## 内部抽選（レバーON時に出目を先に決める）
    execute store result score @s Result_L run random value 1..8
    execute store result score @s Result_C run random value 1..8
    execute store result score @s Result_R run random value 1..8

## 台の状態を「回転中」にする
    scoreboard players set @s SlotState 1
    scoreboard players set @s Cnt 0
    scoreboard players set @s SlotTimer 0

## サウンド
    execute at @s run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 0.5 0.5
