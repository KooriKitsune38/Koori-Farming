execute store result score @s KooriHFWheat run data get entity @s Item.tag.KooriHFWheat

loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_wheat

execute store result entity @s Item.tag.KooriHFWheat int 1 run scoreboard players operation @s KooriHFWheat -= .1 KooriHFCropCalc

execute if score @s KooriHFWheat matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_wheat