execute store result score @s KooriHFCarrots run data get entity @s Item.tag.KooriHFCarrots

loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_carrots

execute store result entity @s Item.tag.KooriHFCarrots int 1 run scoreboard players operation @s KooriHFCarrots -= .1 KooriHFCropCalc

execute if score @s KooriHFCarrots matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_carrots