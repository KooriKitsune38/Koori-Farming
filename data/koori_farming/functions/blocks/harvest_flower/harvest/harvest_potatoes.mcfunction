# Remove Crop
execute if block ~ ~ ~ potatoes[age=7] run setblock ~ ~.2 ~ air destroy


# Calculation
execute store result score @s KooriHFCropCalc run data get entity @s ArmorItems[3].tag.KooriHFPotatoes
execute at @e[type=item,nbt={Item:{id:"minecraft:potato"}},distance=..1.1,sort=nearest,limit=1] run function koori_farming:blocks/harvest_flower/harvest/count_potatoes


# Reset Score
scoreboard players reset @s KooriHFCropCalc


# Repeat if potatoes
execute if entity @e[type=item,nbt={Item:{id:"minecraft:potato"}},distance=..1.1,sort=nearest] run function koori_farming:blocks/harvest_flower/harvest/harvest_potatoes


# Add Harvested Tag
tag @s add KooriCropHarvested