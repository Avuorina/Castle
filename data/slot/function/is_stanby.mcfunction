#> slot:is_stanby
#
# スタンバイ中。ただの演出
#
# @within function slot:tick

## レバーが引かれた。結果を決めよう
    #TODO

## レバーの状態を変化(レバーが引かれる)
    #TODO

## １秒ぐらいスタンバイ
    scoreboard players add @s SlotTick 1
    execute if score @s SlotTick matches 20 run scoreboard players set @s SlotState 2