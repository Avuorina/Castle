#> slot:conversion/
#
# お金をメダルに変換する
#
# @within advencement player:interact/loan

## リンク
    scoreboard players operation $Temp SlotID = @s SlotID
    execute as @e[tag=slot_machine,distance=..10] if score @s SlotID = $Temp SlotID at @s run function slot:money/conversion/exe
    scoreboard players reset $Temp SlotID

    advancement revoke @s only player:interact/loan