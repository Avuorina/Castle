#> money:detect
#
# お金の検出
#
# @public

# RESET
    scoreboard players reset @s Yen

## 圧縮
# 手持ちのお金をすべてスコアとして一時回収する
    # 獲得したアイテムの個数をチェック
    execute store result score @s xxxxx_yen run clear @s diamond 0
    execute store result score @s xxxx_yen run clear @s emerald 0
    execute store result score @s xxx_yen run clear @s gold_ingot 0

    # 個数 × 単価 を計算して金額にする
    scoreboard players operation @s xxxxx_yen *= $10000 Const
    scoreboard players operation @s xxxx_yen *= $1000 Const
    scoreboard players operation @s xxx_yen *= $100 Const

    # Yenに合算
    scoreboard players operation @s Yen += @s xxxxx_yen
    scoreboard players operation @s Yen += @s xxxx_yen
    scoreboard players operation @s Yen += @s xxx_yen
    # 避難
        scoreboard players operation _ _ = @s Yen

# 回収
    clear @s diamond
    clear @s emerald
    clear @s gold_ingot

# 再配布
    # 10000円札(diamond)の計算と配布
    scoreboard players operation @s xxxxx_yen = @s Yen
    scoreboard players operation @s xxxxx_yen /= $10000 Const
    execute if score @s xxxxx_yen matches 1.. run loot give @s loot money:diamond
    scoreboard players operation @s Yen %= $10000 Const

    # 1000円札（emerald）の計算と配布
    scoreboard players operation @s xxxx_yen = @s Yen
    scoreboard players operation @s xxxx_yen /= $1000 Const
    execute if score @s xxxx_yen matches 1.. run loot give @s loot money:emerald
    scoreboard players operation @s Yen %= $1000 Const

    # 100円玉（gold_ingot）の計算と配布
    scoreboard players operation @s xxx_yen = @s Yen
    scoreboard players operation @s xxx_yen /= $100 Const
    execute if score @s xxx_yen matches 1.. run loot give @s loot money:gold_ingot
    scoreboard players operation @s Yen %= $100 Const

# RESET
    scoreboard players operation @s Yen = _ _
    scoreboard players reset @s xxxxx_yen
    scoreboard players reset @s xxxx_yen
    scoreboard players reset @s xxx_yen