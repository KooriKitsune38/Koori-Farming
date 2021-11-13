execute store result score @s KooriHFBeetroots run data get entity @s ArmorItems[3].tag.KooriHFBeetroots

loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_beetroot

execute store result entity @s ArmorItems[3].tag.KooriHFBeetroots int 1 run scoreboard players operation @s KooriHFBeetroots -= .1 KooriHFCropCalc

execute if score @s KooriHFBeetroots matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_beetroot