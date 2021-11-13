## Place
execute as @e[type=item_frame,tag=KooriIrrigator] at @s run function koori_farming:blocks/irrigator/place_irrigator
execute as @e[type=item_frame,tag=KooriHarvestFlower] at @s run function koori_farming:blocks/harvest_flower/place_flower
execute as @e[type=item_frame,tag=KooriFlowerStorage] at @s run function koori_farming:blocks/harvest_flower/place_flower_storage

## Fill Bag
execute as @e[type=item,nbt={Item:{tag:{FarmerID:"harvesting_flower_bag"}}}] at @s if block ~ ~ ~ chest unless predicate koori_farming:harvest_flower/storage/storage_full if entity @e[type=armor_stand,tag=KooriFlowerStorage,distance=..1] run function koori_farming:blocks/harvest_flower/bag/fill_bag

## Stuff
execute as @e[type=armor_stand,tag=KooriIrrigator] at @s run function koori_farming:blocks/irrigator/irrigator
execute as @e[type=armor_stand,tag=KooriHarvestFlower] at @s run function koori_farming:blocks/harvest_flower/flower
execute as @e[type=armor_stand,tag=KooriFlowerStorage] at @s run function koori_farming:blocks/harvest_flower/storage/storage