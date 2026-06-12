#> slot:perform/normal/sequential/ctrl_result/fail
#
# 失敗時の連続演出の排出役
#
# @within function slot:perform/normal/sequential/ctrl_result/

## [役の各確率]
# カス役: 6138/6820 (90.0%) < カス役：4885/6820(71.6%)
# リプレイ: 481/6820 (約7.05%) < リプレイ：1364/6820(20%)
# ベル: 120/6820 (約1.76%) < ベル：341/6820(5%)
# ルーン: 77/6820 (約1.13%) < ルーン：220/6820(3.2%)
# ニンゲンヤメマスカ: 4/6820 (約0.06%) < ニンゲンヤメマスカ：10/6820(0.15%)

# カス役
    execute if score @s _ matches 1..6138 run function slot:reel/result/symbol/kas/
# リプレイ
    execute if score @s _ matches 6139..6619 run function slot:reel/result/symbol/replay/
# ルーン
    execute if score @s _ matches 6620..6696 run function slot:reel/result/symbol/rune/
# ベル
    execute if score @s _ matches 6697..6816 run function slot:reel/result/symbol/bell/
# ニンゲンヤメマスカ
    execute if score @s _ matches 6817..6820 run function slot:reel/result/symbol/ningen/