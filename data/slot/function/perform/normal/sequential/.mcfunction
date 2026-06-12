#> slot:perform/normal/Sequential/
#
# 連続演出。ショーコの独立宣言みたいな。成功すると発展
#
# @within function slot:perform/normal/

## スコアバグケア
    execute unless entity @s[scores={SeqInGame=-2147483648..2147483647}] run tellraw @a [{"storage":global,"nbt":"Prefix.WARN"},{"text":"SeqInGameが範囲外です。自動で初期値に戻しました。", "color":"yellow"}]
    execute unless entity @s[scores={SeqInGame=-2147483648..2147483647}] run scoreboard players set @s SeqInGame 0

## タグによる分岐
    execute if entity @s[tag=SeqInParking] run function slot:perform/normal/sequential/parking/
