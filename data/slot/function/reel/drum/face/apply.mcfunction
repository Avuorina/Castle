#> slot:reel/drum/face/apply
#
# マクロ: item_display自身として実行。
# 自身の固定面番号(ReelDrumFaceIndex)と現在のSpinから、
# 今表示すべきジオメトリテーブルの添字k = (FaceIndex + Spin) mod 20 を求める
#
# @within function slot:reel/drum/face/update_left
#         function slot:reel/drum/face/update_center
#         function slot:reel/drum/face/update_right

## k = FaceIndex + spin
    $scoreboard players set @s ReelDrumFaceK $(spin)
    scoreboard players operation @s ReelDrumFaceK += @s ReelDrumFaceIndex

## mod 20（FaceIndex+spinは最大38なので1回引くだけで足りる）
    execute if score @s ReelDrumFaceK matches 20.. run scoreboard players remove @s ReelDrumFaceK 20

## テーブルの該当面へtransformationを反映
    execute store result storage slot:temp drum.k int 1 run scoreboard players get @s ReelDrumFaceK
    function slot:reel/drum/face/set_transform with storage slot:temp drum
