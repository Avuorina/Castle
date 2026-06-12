#> slot:perform/normal/sequential/ctrl_result/success
#
# 成功時の連続演出の排出役
#
# @within function slot:perform/normal/sequential/ctrl_result/

## [役の各確率]
# カス役: 3000/6820 (44.0%) < 4885/6820(71.6%)
# リプレイ: 2500/6820 (36.7%) < 1364/6820(20.0%)
# ベル: 820/6820 (12.0%) < 341/6820( 5.0%)
# ルーン: 470/6820 ( 6.9%) < 220/6820( 3.2%)
# ニンゲンヤメマスカ: 30/6820 ( 0.4%) < 10/6820( 0.15%)

# カス役
    execute if score @s _ matches 1..3000 run function slot:reel/result/symbol/kas/
# リプレイ
    execute if score @s _ matches 3001..5500 run function slot:reel/result/symbol/replay/
# ベル
    execute if score @s _ matches 5501..6320 run function slot:reel/result/symbol/bell/
# ルーン
    execute if score @s _ matches 6321..6790 run function slot:reel/result/symbol/rune/
# ニンゲンヤメマスカ
    execute if score @s _ matches 6791..6820 run function slot:reel/result/symbol/ningen/