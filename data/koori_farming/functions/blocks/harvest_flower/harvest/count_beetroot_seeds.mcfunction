execute store result score @s KooriHFCropCount run data get entity @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}},sort=nearest,limit=1] Item.Count
kill @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}},sort=nearest,limit=1]

execute unless block ~ ~ ~ beetroots[age=0] if score @s KooriHFCropCount matches 1.. run function koori_farming:blocks/harvest_flower/harvest/plant_beetroots

execute store result entity @s ArmorItems[3].tag.KooriHFBeetrootSeeds int 1 run scoreboard players operation @s KooriHFCropCalc += @s KooriHFCropCount

scoreboard players reset @s KooriHFCropCalc