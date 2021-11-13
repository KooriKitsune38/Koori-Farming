# Remove Crop
execute if block ~ ~ ~ wheat[age=7] run setblock ~ ~.2 ~ air destroy

# Calculation
## Wheat
execute store result score @s KooriHFCropCalc run data get entity @s ArmorItems[3].tag.KooriHFWheat
execute at @e[type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..1.1,sort=nearest,limit=1] run function koori_farming:blocks/harvest_flower/harvest/count_wheat

scoreboard players reset @s KooriHFCropCalc

## Seeds
execute store result score @s KooriHFCropCalc run data get entity @s ArmorItems[3].tag.KooriHFWheatSeeds
execute at @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}},distance=..1.1,sort=nearest,limit=1] run function koori_farming:blocks/harvest_flower/harvest/count_wheat_seeds

scoreboard players reset @s KooriHFCropCalc


# Repeat if wheat/seeds
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..1.1,sort=nearest] run function koori_farming:blocks/harvest_flower/harvest/harvest_wheat
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}},distance=..1.1,sort=nearest] run function koori_farming:blocks/harvest_flower/harvest/harvest_wheat


# Add Tag
tag @s add KooriCropHarvested