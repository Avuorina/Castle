#> slot:reel_drum/face/set_transform
#
# マクロ：ジオメトリテーブル[k]の値をtransformationへ反映し、クライアント側の補完で滑らかに動かす。
# interpolation_durationは基本速度(1tick/コマ)以下に保つこと。これより長いと、
# 前の補間が終わる前に次の移動命令が来て直線補間(弦)が繰り返し中断され、
# 実際の描画位置が円の内側へ寄っていく(半径が縮んで見える)不具合が起きる。
#
# @with function slot:reel_drum/face/apply

    $data modify entity @s transformation.translation set from storage slot:reel_drum geometry[$(k)].translation
    $data modify entity @s transformation.left_rotation set from storage slot:reel_drum geometry[$(k)].left_rotation
        data modify entity @s interpolation_duration set value 1
        data modify entity @s start_interpolation set value 0