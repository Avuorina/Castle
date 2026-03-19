#> slot:reel/win/white7
# 白7揃い → ボーナス確定
# @within function slot:reel/result

    scoreboard players add @s Payout 50
    # TODO: ボーナス状態に遷移（slot_state = 20）
    execute at @s run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
    execute at @s run tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"§b§l革命ボーナス確定！！"}]
