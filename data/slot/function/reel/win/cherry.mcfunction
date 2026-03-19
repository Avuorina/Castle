#> slot:reel/win/cherry
# チェリー → 小払い出し（2枚）
# @within function slot:reel/result

    scoreboard players add @s Payout 2
    execute at @s run playsound minecraft:block.note_block.pling player @a ~ ~ ~ 0.5 1.2
