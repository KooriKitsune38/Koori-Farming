# Remove Crop
execute if block ~ ~ ~ sweet_berry_bush run setblock ~ ~.2 ~ air destroy

# Calculations
execute store result score @s KooriHFCropCalc run data get entity @s ArmorItems[3].tag.KooriHFBerries
execute at @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..1.1,sort=nearest,limit=1] run function koori_farming:blocks/harvest_flower/harvest/count_berries

scoreboard players reset @s KooriHFCropCalc

# Replace the block again
setblock ~ ~ ~ sweet_berry_bush[age=1]

# Add tag
tag @s add KooriCropHarvested