#> slot:reel/update/left
#
# マクロ: item_displayのCMD値を設定する
#
# @within function slot:reel/update/, slot:reel/stop

$data modify entity @s item.components."minecraft:custom_model_data".strings set value ["$(up)"]
$data modify entity @n[tag=slot_reel_L_mid,distance=..3] item.components."minecraft:custom_model_data".strings set value ["$(mid)"]
$data modify entity @n[tag=slot_reel_L_down,distance=..3] item.components."minecraft:custom_model_data".strings set value ["$(down)"]
