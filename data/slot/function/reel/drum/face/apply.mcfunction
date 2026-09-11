#> slot:reel/drum/face/apply
#
# マクロ: item_display自身として実行。
# 自身の固定面番号(ReelDrumFaceIndex)と現在のSpinから、
# 今表示すべきジオメトリテーブルの添字k = (FaceIndex - Spin) mod 20 を求める
# （正面=k=0に来るのはFaceIndex=Spinのコマ。着地時はSpin=Targetにスナップされるため、
#   これでちょうどFaceIndex=Target＝実際の抽選結果のコマが正面に来る）
#
# @within function slot:reel/drum/face/update_left
#         function slot:reel/drum/face/update_center
#         function slot:reel/drum/face/update_right

## k = FaceIndex - spin
    scoreboard players operation @s ReelDrumFaceK = @s ReelDrumFaceIndex
    $scoreboard players remove @s ReelDrumFaceK $(spin)

## mod 20（FaceIndex(0-19) - spin(0-19)は-19〜19なので1回足すだけで足りる）
    execute if score @s ReelDrumFaceK matches ..-1 run scoreboard players add @s ReelDrumFaceK 20

## テーブルの該当面へtransformationを反映
    execute store result storage slot:temp drum.k int 1 run scoreboard players get @s ReelDrumFaceK
    function slot:reel/drum/face/set_transform with storage slot:temp drum
