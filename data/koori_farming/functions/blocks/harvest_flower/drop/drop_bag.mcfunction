execute store result score @s KooriHFCarrots run data get entity @s Item.tag.KooriHFCarrots
execute store result score @s KooriHFPotatoes run data get entity @s Item.tag.KooriHFPotatoes
execute store result score @s KooriHFWheat run data get entity @s Item.tag.KooriHFWheat
execute store result score @s KooriHFWheatS run data get entity @s Item.tag.KooriHFWheatSeeds
execute store result score @s KooriHFBeetroots run data get entity @s Item.tag.KooriHFBeetroots
execute store result score @s KooriHFBeetrootS run data get entity @s Item.tag.KooriHFBeetrootSeeds
execute store result score @s KooriHFBerries run data get entity @s Item.tag.KooriHFBerries

execute unless predicate koori_farming:harvest_flower/storage/repeat_fill_condition run kill @s

data modify entity @s Item.tag.display.Name set value '{"text":"Harvesting Flower Bag","italic":false}'
data modify entity @s Item.tag.display.Lore set value ['{"text":"Drop me onto a Flower Storage!"}','{"text":""}','{"text":"WARNING: It won\'t work if","color":"red"}','{"text":"the storage is full!","color":"red"}']
data modify entity @s Item.tag.EntityTag.Tags set value "KooriHarvestFlowerBag"
data modify entity @s Item.tag.FarmerID set value "harvesting_flower_bag"