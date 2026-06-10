# 1ゲーム目の演出（レバーオン時）
    execute if score @s SeqInGame matches 1 run tellraw @a [{"text":"[演出-1日目] 車が駐車場に近づいていく...","color":"yellow"}]

# 2ゲーム目の演出（レバーオン時）
    execute if score @s SeqInGame matches 2 run tellraw @a [{"text":"[演出-2日目] 慎重にバックで駐車スペースを狙っている...","color":"yellow"}]

# 3ゲーム目の演出（レバーオン時）
    execute if score @s SeqInGame matches 3 run tellraw @a [{"text":"[演出-最終日] いよいよ駐車の瞬間！うまく入るか！？","color":"gold"}]

# 4ゲーム目　judge
    execute if score @s SeqInGame matches 4 run function slot:perform/normal/sequential/parking/finish
    
