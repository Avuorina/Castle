#> slot:reel/strip
#
# リールストリップ（各リール20コマの固定パターン）をstorageに定義
# 画像のリール配列に基づく
#
# CMD対応: 1=kas, 2=che, 3=bel, 4=run, 5=7, 6=bar, 7=rep, 8=v
#
# @within function main:load

## 左リール（上から: 0→19）
# 元の並びが逆順だったため、配列全体を反転して修正（2026-09-28）
#                                                  0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16  17  18  19
#                                                 rep bel run che  7  rep bel run che bar rep bel run  v   v  rep bel run che kas
    data modify storage slot:reel left set value ["7","3","4","2","5","7","3","4","2","6","7","3","4","8","8","7","3","4","2","1"]

## 中リール（上から: 0→19）
# 元の並びが逆順だったため、配列全体を反転して修正（2026-09-28）
#                                                    0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16  17  18  19
#                                                   che run bel rep  7   v  run bel rep bar che run bel rep  v  che run bel rep kas
    data modify storage slot:reel center set value ["2","4","3","7","5","8","4","3","7","6","2","4","3","7","8","2","4","3","7","1"]

## 右リール（上から: 0→19）
# 元の並びが逆順だったため、配列全体を反転して修正（2026-09-28）
#                                                   0   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16  17  18  19
#                                                  kas rep bel run che  7  rep bel run che bar rep bel run  v   v  rep bel run che
    data modify storage slot:reel right set value ["1","7","3","4","2","5","7","3","4","2","6","7","3","4","8","8","7","3","4","2"]