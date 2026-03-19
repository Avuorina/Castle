#> slot:reel/update/lookup_c
#
# マクロ: 中リールのストリップ配列[pos_c]からシンボルを取得
#
# @within function slot:reel/update/

$data modify storage slot:temp center set from storage slot:reel center[$(pos_c)]
