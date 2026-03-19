#> slot:reel/win/replay
# リプレイ揃い → メダル維持（賭け分返却）
# @within function slot:reel/result

    scoreboard players add @s Payout 3
    execute at @s run playsound minecraft:block.note_block.pling player @a ~ ~ ~ 0.5 1
