#> slot:install/use
#
# 設置ツールを右クリックした時：スロット台を設置
#
# @within function slot:tick/player

# 設置メイン関数を呼び出し（方向検知→召喚→初期化まで全部やる）
    execute align xyz positioned ~0.5 ~ ~0.5 run function slot:install/

# サウンド
    playsound minecraft:block.anvil.place player @s ~ ~ ~ 0.7 1

# RESET
    scoreboard players reset @s Tools.Using