#> money:conversion/in/1000yen
#
# 1000円札を投入する
#
# @within function money:conversion/in

## 1000円札を投入する
    clear @s emerald 1
    scoreboard players add @n[tag=slot_machine,type=armor_stand] Invest 1000
    scoreboard players remove @s Yen 1000
    function money:detect

    playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1 0.5