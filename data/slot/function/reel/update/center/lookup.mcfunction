#> slot:reel/update/lookup_c
#
# マクロ: 中リールのストリップ配列[pos_c]からシンボルを取得
#
# @within function slot:reel/update/

$data modify storage slot:temp reel.center.up set from storage slot:reel center[$(up)]
$data modify storage slot:temp reel.center.mid set from storage slot:reel center[$(mid)]
$data modify storage slot:temp reel.center.down set from storage slot:reel center[$(down)]
