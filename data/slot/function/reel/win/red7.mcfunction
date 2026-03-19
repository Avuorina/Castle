#> slot:reel/win/red7
# 赤7揃い → AT「革命RUSH」確定
# @within function slot:reel/result

    scoreboard players add @s Payout 100
    # TODO: AT状態に遷移（slot_state = 30）
    execute at @s run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 0.8
    execute at @s run tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"§c§l革命RUSH確定！！！"}]
