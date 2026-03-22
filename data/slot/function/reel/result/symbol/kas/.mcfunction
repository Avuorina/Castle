#> slot:reel/result/symbol/kas/
#
# 19 12 7
#
# @within function slot:reel/result/symbol/kas/

## はずれ
scoreboard players set @s Result_L 19
scoreboard players set @s Result_C 12
scoreboard players set @s Result_R 7

tellraw @a[team=Debug] {"text":"はずれ",color:"gray"}

## 結果ID カス = 1
    scoreboard players set @s ResultID 1