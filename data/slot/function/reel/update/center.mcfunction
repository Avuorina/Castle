#> slot:reel/update/center
#
# マクロ: item_displayのCMD値を設定する
#
# @within function slot:reel/update/, slot:reel/stop

$data modify entity @s item.components."minecraft:custom_model_data".strings set value ["$(center)"]