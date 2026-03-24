#> slot:install/hold
#
# 設置ツールを持っている間、設置位置にパーティクルプレビューを表示
#
# @within function slot:tick/player

# 方向を検知
    function api:player/direction

# 方向に応じて設置予定位置にパーティクル
    # 北向き
        execute if score @s Direction matches 0 align xyz run particle happy_villager ~ ~1 ~-1 0 0 0 0 5 force @s
    # 東向き
        execute if score @s Direction matches 90 align xyz run particle happy_villager ~1 ~1 ~ 0 0 0 0 5 force @s
    # 南向き
        execute if score @s Direction matches 180 align xyz run particle happy_villager ~ ~1 ~1 0 0 0 0 5 force @s
    # 西向き
        execute if score @s Direction matches -90 align xyz run particle happy_villager ~-1 ~1 ~ 0 0 0 0 5 force @s