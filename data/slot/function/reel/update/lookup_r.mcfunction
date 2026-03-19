#> slot:reel/update/lookup_r
#
# マクロ: 右リールのストリップ配列[pos_r]からシンボルを取得
#
# @within function slot:reel/update/

$data modify storage slot:temp reel.right.up set from storage slot:reel right[$(up)]
$tellraw @a {"text":"$(up)"}
$data modify storage slot:temp reel.right.mid set from storage slot:reel right[$(mid)]
$tellraw @a {"text":"$(mid)"}
$data modify storage slot:temp reel.right.down set from storage slot:reel right[$(down)]
$tellraw @a {"text":"$(down)"}

