execute store result score @s KooriHFWheatS run data get entity @s Item.tag.KooriHFWheatSeeds

loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_wheat_seeds

execute store result entity @s Item.tag.KooriHFWheatSeeds int 1 run scoreboard players operation @s KooriHFWheatS -= .1 KooriHFCropCalc

execute if score @s KooriHFWheatS matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_wheat