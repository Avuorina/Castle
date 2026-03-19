data modify storage slot: symbol.l set value 0
data modify storage slot: symbol.c set value 0
data modify storage slot: symbol.r set value 0
execute as @n[type=armor_stand,tag=slot_machine] run function api:slot/roll/set_roll with storage slot: symbol