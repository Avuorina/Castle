#> slot:reel/win/bar
# BAR揃い → CZ「共闘Vチャレンジ」突入
# @within function slot:reel/result

    scoreboard players add @s Payout 10
    # TODO: CZ状態に遷移（slot_state = 10）
    execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1
    execute at @s run tellraw @a [{"storage":global,"nbt":"Prefix.INFO"},{"text":"§e§lCZ「共闘Vチャレンジ」突入！"}]
