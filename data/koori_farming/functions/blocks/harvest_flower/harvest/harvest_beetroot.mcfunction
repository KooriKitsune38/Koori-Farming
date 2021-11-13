# Remove Crop
execute if block ~ ~ ~ beetroots[age=3] run setblock ~ ~.2 ~ air destroy

# Calculations
## Beetroot
execute store result score @s KooriHFCropCalc run data get entity @s ArmorItems[3].tag.KooriHFBeetroots
execute at @e[type=item,nbt={Item:{id:"minecraft:beetroot"}},distance=..1.1,sort=nearest,limit=1] run function koori_farming:blocks/harvest_flower/harvest/count_beetroot

## Seeds
execute store result score @s KooriHFCropCalc run data get entity @s ArmorItems[3].tag.KooriHFBeetrootSeeds
execute at @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}},distance=..1.1,sort=nearest,limit=1] run function koori_farming:blocks/harvest_flower/harvest/count_beetroot_seeds


# Repeat if beetroot/seeds
execute if entity @e[type=item,nbt={Item:{id:"minecraft:beetroot"}},distance=..1.1,sort=nearest] run function koori_farming:blocks/harvest_flower/harvest/harvest_beetroot
execute if entity @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}},distance=..1.1,sort=nearest] run function koori_farming:blocks/harvest_flower/harvest/harvest_beetroot

# Add Tag
tag @s add KooriCropHarvested