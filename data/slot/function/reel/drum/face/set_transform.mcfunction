#> slot:reel/drum/face/set_transform
#
# マクロ: ジオメトリテーブル[k]の値をtransformationへ反映し、
# クライアント側の補間(interpolation)でなめらかに動かす
#
# @within function slot:reel/drum/face/apply

$data modify entity @s transformation.translation set from storage slot:reel_drum geometry[$(k)].translation
$data modify entity @s transformation.left_rotation set from storage slot:reel_drum geometry[$(k)].left_rotation
    data modify entity @s interpolation_duration set value 3
    data modify entity @s start_interpolation set value 0
