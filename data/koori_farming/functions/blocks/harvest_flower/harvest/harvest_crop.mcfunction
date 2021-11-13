execute if block ~ ~ ~ carrots[age=7] run function koori_farming:blocks/harvest_flower/harvest/harvest_carrots

execute if block ~ ~ ~ potatoes[age=7] run function koori_farming:blocks/harvest_flower/harvest/harvest_potatoes

execute if block ~ ~ ~ wheat[age=7] run function koori_farming:blocks/harvest_flower/harvest/harvest_wheat

execute if block ~ ~ ~ beetroots[age=3] run function koori_farming:blocks/harvest_flower/harvest/harvest_beetroot

execute if block ~ ~ ~ sweet_berry_bush[age=3] run function koori_farming:blocks/harvest_flower/harvest/harvest_berries

execute if entity @s[tag=KooriCropHarvested] if entity @e[type=armor_stand,tag=KooriFlowerStorage,distance=..20] at @e[type=armor_stand,tag=KooriFlowerStorage,distance=..20,predicate=!koori_farming:harvest_flower/storage/storage_full,limit=1,sort=nearest] run function koori_farming:blocks/harvest_flower/storage/fill_storage

tag @s remove KooriCropHarvested