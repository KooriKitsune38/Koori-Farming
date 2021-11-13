execute store result score @s KooriHFCropCount run data get entity @e[type=item,nbt={Item:{id:"minecraft:potato"}},sort=nearest,limit=1] Item.Count
kill @e[type=item,nbt={Item:{id:"minecraft:potato"}},sort=nearest,limit=1]

execute unless block ~ ~ ~ potatoes[age=0] if score @s KooriHFCropCount matches 1.. run function koori_farming:blocks/harvest_flower/harvest/plant_potatoes

execute store result entity @s ArmorItems[3].tag.KooriHFPotatoes int 1 run scoreboard players operation @s KooriHFCropCalc += @s KooriHFCropCount