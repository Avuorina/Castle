#> slot:reel/win/bell
# ベル揃い → 中払い出し（8枚）
# @within function slot:reel/result

    scoreboard players add @s Payout 8
    execute at @s run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 0.7 1
