#> slot:perform/normal/sequential/parking/judge
#
# judge！！
#
# @within function slot:perform/normal/sequential/parking/in_progres

# 成功/失敗
    execute if score @s PerformPower matches 0..1 run \
    tag @s add SeqSuccess
    execute if score @s PerformPower matches 2..5 run \
    tag @s add SeqFail

## 進行
    scoreboard players set @s SeqInGame 1
