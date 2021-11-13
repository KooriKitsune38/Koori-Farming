# Remove Crop
execute if block ~ ~ ~ carrots[age=7] run setblock ~ ~.2 ~ air destroy

# Calculation
execute store result score @s KooriHFCropCalc run data get entity @s ArmorItems[3].tag.KooriHFCarrots
execute at @e[type=item,nbt={Item:{id:"minecraft:carrot"}},distance=..1.1,sort=nearest,limit=1] run function koori_farming:blocks/harvest_flower/harvest/count_carrots

scoreboard players reset @s KooriHFCropCalc

# Repeat if carrots
execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot"}},distance=..1.1,sort=nearest] run function koori_farming:blocks/harvest_flower/harvest/harvest_carrots


# Add Harvested Tag
tag @s add KooriCropHarvested