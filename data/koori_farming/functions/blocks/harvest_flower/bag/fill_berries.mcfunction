execute store result score @s KooriHFBerries run data get entity @s Item.tag.KooriHFBerries

loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_berries

execute store result entity @s Item.tag.KooriHFBerries int 1 run scoreboard players operation @s KooriHFBerries -= .1 KooriHFCropCalc

execute if score @s KooriHFBerries matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_berries