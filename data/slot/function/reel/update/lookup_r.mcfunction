#> slot:reel/update/lookup_r
#
# マクロ: 右リールのストリップ配列[pos_r]からシンボルを取得
#
# @within function slot:reel/update/

$data modify storage slot:temp right set from storage slot:reel right[$(pos_r)]
