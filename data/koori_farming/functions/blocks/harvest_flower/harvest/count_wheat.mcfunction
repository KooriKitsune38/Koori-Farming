execute store result score @s KooriHFCropCount run data get entity @e[type=item,nbt={Item:{id:"minecraft:wheat"}},sort=nearest,limit=1] Item.Count
kill @e[type=item,nbt={Item:{id:"minecraft:wheat"}},sort=nearest,limit=1]

execute store result entity @s ArmorItems[3].tag.KooriHFWheat int 1 run scoreboard players operation @s KooriHFCropCalc += @s KooriHFCropCount
