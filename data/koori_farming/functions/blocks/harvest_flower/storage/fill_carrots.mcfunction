execute store result score @s KooriHFCarrots run data get entity @s ArmorItems[3].tag.KooriHFCarrots

execute run loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_carrots

execute store result entity @s ArmorItems[3].tag.KooriHFCarrots int 1 run scoreboard players operation @s KooriHFCarrots -= .1 KooriHFCropCalc

execute if score @s KooriHFCarrots matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_carrots