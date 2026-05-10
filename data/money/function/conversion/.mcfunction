#> money:conversion/
#
# お金をメダルに変換する
#
# @within function slot:money/conversion/

execute unless score @s Invest matches 1000.. run return run tellraw @p {"text":"投入金額が足りません。","color":"red"}

scoreboard players remove @s Invest 1000
scoreboard players add @s Medal 46
