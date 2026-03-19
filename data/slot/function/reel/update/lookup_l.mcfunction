#> slot:reel/update/lookup_l
#
# マクロ: 左リールのストリップ配列[pos_l]からシンボルを取得
#
# @within function slot:reel/update/

$data modify storage slot:temp left set from storage slot:reel left[$(pos_l)]
