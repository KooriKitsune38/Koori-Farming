particle falling_dust slime_block ~ ~.3 ~ .1 .1 .1 1 2 force
playsound block.composter.empty block @a ~ ~ ~ .2 1.5

execute store result score @s KooriHFCarrots run data get entity @s Item.tag.KooriHFCarrots
execute store result score @s KooriHFPotatoes run data get entity @s Item.tag.KooriHFPotatoes
execute store result score @s KooriHFWheat run data get entity @s Item.tag.KooriHFWheat
execute store result score @s KooriHFWheatS run data get entity @s Item.tag.KooriHFWheatSeeds
execute store result score @s KooriHFBeetroots run data get entity @s Item.tag.KooriHFBeetroots
execute store result score @s KooriHFBeetrootS run data get entity @s Item.tag.KooriHFBeetrootSeeds
execute store result score @s KooriHFBerries run data get entity @s Item.tag.KooriHFBerries

execute if score @s KooriHFCarrots matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_carrots

execute if score @s KooriHFPotatoes matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_potatoes

execute if score @s KooriHFWheat matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_wheat

execute if score @s KooriHFWheatS matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_wheat_seeds

execute if score @s KooriHFBeetroots matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_beetroot

execute if score @s KooriHFBeetrootS matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_beetroot_seeds

execute if score @s KooriHFBerries matches 1.. run function koori_farming:blocks/harvest_flower/bag/fill_berries

execute unless predicate koori_farming:harvest_flower/storage/repeat_fill_condition run kill @s