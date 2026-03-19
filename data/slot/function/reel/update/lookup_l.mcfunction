#> slot:reel/update/lookup_l
#
# マクロ: 左リールのストリップ配列[pos_l]からシンボルを取得
#
# @within function slot:reel/update/

$data modify storage slot:temp reel.left.up set from storage slot:reel left[$(up)]
$data modify storage slot:temp reel.left.mid set from storage slot:reel left[$(mid)]
$data modify storage slot:temp reel.left.down set from storage slot:reel left[$(down)]
