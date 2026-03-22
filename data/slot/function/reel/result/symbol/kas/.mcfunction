#> slot:reel/result/symbol/kas/
#
# 19 12 7
#
# @within function slot:reel/result/symbol/kas/

## パターンを選べ！
    scoreboard players add @s Cnt 1
    execute if score @s Cnt matches 1 run function slot:reel/result/symbol/kas/pattern/1
    execute if score @s Cnt matches 2 run function slot:reel/result/symbol/kas/pattern/2
    execute if score @s Cnt matches 3 run function slot:reel/result/symbol/kas/pattern/3
    execute if score @s Cnt matches 4 run function slot:reel/result/symbol/kas/pattern/4
    execute if score @s Cnt matches 4 run scoreboard players set @s Cnt 0

tellraw @a[team=Debug] {"text":"はずれ",color:"gray"}

## 結果ID カス = 1
    scoreboard players set @s ResultID 1