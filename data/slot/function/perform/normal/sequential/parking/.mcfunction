#> slot:perform/normal/sequential/parking/
#
# 3ゲームを使い、抽選結果を表示
#
# @within function slot:perform/normal/sequential/

## スコアバグケア
    execute unless entity @s[scores={SeqInGame=-2147483648..2147483647}] run tellraw @a [{"storage":global,"nbt":"Prefix.WARN"},{"text":"SeqInGameが範囲外です。自動で初期値に戻しました。", "color":"yellow"}]
    execute unless entity @s[scores={SeqInGame=-2147483648..2147483647}] run scoreboard players set @s SeqInGame 0

## 駐車演出のタグをつける
    tag @s[scores={SeqInGame=0}] add SeqInParking
    tag @s[scores={SeqInGame=0}] add SeqActive

## Progressが0なら結果を決める
    execute if score @s SeqInGame matches 0 run function slot:perform/normal/sequential/parking/judge

## さて、進行だ。
    function slot:perform/normal/sequential/parking/in_progress

## ゲーム数を進める
    scoreboard players add @s[scores={SeqInGame=0..998}] SeqInGame 1

## ゲームを終わらせる
    scoreboard players set @s[scores={SeqInGame=999}] SeqInGame 0