#> slot:reel/result
#
# 全リール停止後の出目判定（armor_standとして実行）
#
# @within function slot:reel/stop

## 台の状態を「待機中」に戻す
    scoreboard players set @s SlotState 0

## 出目判定
    # === 3つ揃い ===
    # V揃い（CMD 8-8-8）→ 超革命RUSH確定
        execute if score @s Result_L matches 8 if score @s Result_C matches 8 if score @s Result_R matches 8 run function slot:reel/win/v_align

    # 赤7揃い（CMD 7-7-7）→ AT確定
        execute if score @s Result_L matches 7 if score @s Result_C matches 7 if score @s Result_R matches 7 run function slot:reel/win/red7

    # 白7揃い（CMD 6-6-6）→ ボーナス確定
        execute if score @s Result_L matches 6 if score @s Result_C matches 6 if score @s Result_R matches 6 run function slot:reel/win/white7

    # BAR揃い（CMD 5-5-5）→ CZ確定
        execute if score @s Result_L matches 5 if score @s Result_C matches 5 if score @s Result_R matches 5 run function slot:reel/win/bar

    # リプレイ揃い（CMD 4-4-4）→ メダル維持（再遊技）
        execute if score @s Result_L matches 4 if score @s Result_C matches 4 if score @s Result_R matches 4 run function slot:reel/win/replay

    # ベル揃い（CMD 2-2-2）→ 小役（メダル払い出し）
        execute if score @s Result_L matches 2 if score @s Result_C matches 2 if score @s Result_R matches 2 run function slot:reel/win/bell

    # スイカ揃い（CMD 3-3-3）→ 小役（メダル払い出し多め）
        execute if score @s Result_L matches 3 if score @s Result_C matches 3 if score @s Result_R matches 3 run function slot:reel/win/watermelon

    # === チェリー（左リールのみ）===
    # チェリー（CMD 1が左にある）→ 小役
        execute if score @s Result_L matches 1 run function slot:reel/win/cherry
