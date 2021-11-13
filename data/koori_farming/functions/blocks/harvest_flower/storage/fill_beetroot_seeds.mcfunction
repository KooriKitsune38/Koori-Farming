execute store result score @s KooriHFBeetrootS run data get entity @s ArmorItems[3].tag.KooriHFBeetrootSeeds

loot insert ~ ~ ~ loot koori_farming:harvest_flower/bag_beetroot_seeds

execute store result entity @s ArmorItems[3].tag.KooriHFBeetrootSeeds int 1 run scoreboard players operation @s KooriHFBeetrootS -= .1 KooriHFCropCalc

execute if score @s KooriHFBeetrootS matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_beetroot_seeds