#> money:detect
#
# お金だ！
#
# @within function money:tick

## 所持金を削除
    scoreboard players reset @s Yen

## アイテムをスコアに代入
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

    # RESET
        scoreboard players reset @s xxxxx_yen
        scoreboard players reset @s xxxx_yen
        scoreboard players reset @s xxx_yen
        scoreboard players reset @s PickUpDetectDiamond
        scoreboard players reset @s PickUpDetectEmerald
        scoreboard players reset @s PickUpDetectGold_ingot