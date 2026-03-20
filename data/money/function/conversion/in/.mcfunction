#> money:conversion/in
#
# 投資！
#
# 

## お金を投入する
# 持ってるお金を検知し、投資額(Invest)に加算する
## 10,000yen
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run function money:conversion/in/10000yen
## 1,000yen
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:emerald"}}] run function money:conversion/in/1000yen
## 100yen
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run tellraw @s {"text":"お札しか入れられない！","color":red}