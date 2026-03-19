#> slot:reel/win/watermelon
# スイカ揃い → 大払い出し（15枚）
# @within function slot:reel/result

    scoreboard players add @s Payout 15
    execute at @s run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.7 0.8
