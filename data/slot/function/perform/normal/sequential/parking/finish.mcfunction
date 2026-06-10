#> slot:perform/normal/sequential/parking/finish
#
# 連続演出の結末表示とリセット

# 演出成功時の演出
    execute if entity @s[tag=SeqSuccess] run tellraw @a [{"text":"[演出] 駐車に成功した！おめでとう！","color":"green"}]
    execute if entity @s[tag=SeqSuccess] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

# 演出失敗時の演出
    execute if entity @s[tag=SeqFail] run tellraw @a [{"text":"[演出] 駐車に失敗した...","color":"red"}]
    execute if entity @s[tag=SeqFail] run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.5

# タグのクリーンアップ
    tag @s remove SeqSuccess
    tag @s remove SeqFail
    tag @s remove SeqInParking
    tag @s remove SeqInGame

## reset
    scoreboard players set @s SeqInGame 0