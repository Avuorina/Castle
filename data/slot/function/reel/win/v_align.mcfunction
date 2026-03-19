#> slot:reel/win/v_align
# V揃い → 超革命RUSH確定（最強）
# @within function slot:reel/result

    scoreboard players add @s Payout 300
    # TODO: 超AT状態に遷移（slot_state = 31）
    execute at @s run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 0.5
    execute at @s run tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"§d§l§k!!§r §d§l超革命RUSH確定！！！！ §d§l§k!!"}]
