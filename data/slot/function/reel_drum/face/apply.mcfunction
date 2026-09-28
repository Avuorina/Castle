#> slot:reel_drum/face/apply
#
# マクロ：item_displayとして実行
# 自身のReelDrumFaceIndexと現在のspinから
# 今表示すべきジオメトリの添字 K = (FaceIndex - Spin) mod 20を求める
# @within function slot:reel_drum/face/update_left
#             function slot:reel_drum/face/update_center
#             function slot:reel_drum/face/update_right

## K = FaceIndex - Spin
    scoreboard players operation @s ReelDrumFaceK = @s ReelDrumFaceIndex
    $scoreboard players remove @s ReelDrumFaceK $(spin)

## mod 20 (FaceIndex(0-19) - spin(0-19)は-19~19なので1回足すだけで足りる)
    execute if score @s ReelDrumFaceK matches -1 run scoreboard players add @s ReelDrumFaceK 20

## テーブルの該当面へtransformationを反映
    execute store result storage slot:temp drum.k int 1 run scoreboard players get @s ReelDrumFaceK
    function slot:reel_drum/face/set_transform with storage slot:temp drum