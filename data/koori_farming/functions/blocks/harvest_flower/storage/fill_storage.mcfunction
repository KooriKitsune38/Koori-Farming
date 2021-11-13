execute store result score @s KooriHFCarrots run data get entity @s ArmorItems[3].tag.KooriHFCarrots
execute store result score @s KooriHFPotatoes run data get entity @s ArmorItems[3].tag.KooriHFPotatoes
execute store result score @s KooriHFWheat run data get entity @s ArmorItems[3].tag.KooriHFWheat
execute store result score @s KooriHFWheatS run data get entity @s ArmorItems[3].tag.KooriHFWheatSeeds
execute store result score @s KooriHFBeetroots run data get entity @s ArmorItems[3].tag.KooriHFBeetroots
execute store result score @s KooriHFBeetrootS run data get entity @s ArmorItems[3].tag.KooriHFBeetrootSeeds
execute store result score @s KooriHFBerries run data get entity @s ArmorItems[3].tag.KooriHFBerries

execute if score @s KooriHFCarrots matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_carrots

execute if score @s KooriHFPotatoes matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_potatoes

execute if score @s KooriHFWheat matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_wheat

execute if score @s KooriHFWheatS matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_wheat_seeds

execute if score @s KooriHFBeetroots matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_beetroot

execute if score @s KooriHFBeetrootS matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_beetroot_seeds

execute if score @s KooriHFBerries matches 1.. run function koori_farming:blocks/harvest_flower/storage/fill_berries

particle composter ~ ~.5 ~ .4 .4 .4 1 20
playsound block.composter.empty block @a ~ ~ ~ .1 1.5
