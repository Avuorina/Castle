#> main:tick
#
# 常時実行される処理
#
# @public

## money:tick
    function money:tick
## indev:display_score  
    execute as @a run function indev:display_score
## slot:tick
    function slot:tick/
## player:point/tick
    execute as @a run function player:point/tick