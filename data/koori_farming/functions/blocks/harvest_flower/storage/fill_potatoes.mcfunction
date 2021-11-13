execute store result score @s KooriHFPotatoes run data get entity @s ArmorItems[3].tag.KooriHFPotatoes

loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_potatoes

execute store result entity @s ArmorItems[3].tag.KooriHFPotatoes int 1 run scoreboard players operation @s KooriHFPotatoes -= .1 KooriHFCropCalc

execute if score @s KooriHFPotatoes matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_potatoes