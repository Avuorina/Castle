#> slot:perform/normal/smorker/
#
# 喫煙者大集合
#
# @within function 

# 喫煙者大集合 加藤のみ→デフォ     レバーオン
#             加藤江尻→デフォ     江尻第一ボタン
#             加藤江尻上條→中     上條第二ボタン
#             加藤江尻上條田澤→強 田澤第三ボタン

## OMDを解放
    function #oh_my_dat:please
    # 演出を書き換える
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Perform set value "Smorker"

## デフォ (0)
    execute if score @s PerformPower matches 0..1 run function slot:perform/normal/smorker/default/

## 中(1..2)
    execute if score @s PerformPower matches 1..2 run function slot:perform/normal/smorker/middle/

## 強(3..5)
    execute if score @s PerformPower matches 3..5 run function slot:perform/normal/smorker/strong/
