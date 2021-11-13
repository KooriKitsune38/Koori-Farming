## Activate Irrigator
execute if predicate koori_farming:blocks/irrigator/filled_cauldron unless predicate koori_farming:blocks/irrigator/obstacles anchored eyes run function koori_farming:blocks/irrigator/active_irrigator
execute unless predicate koori_farming:blocks/irrigator/filled_cauldron run scoreboard players reset @s KooriIrrigTimer

## Change Model if empty cauldron
execute if block ~ ~1 ~ cauldron[level=0] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:38011}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 38011

## Irrig Count
execute store result score @s KooriIrrigCount if entity @e[distance=..1.1,type=armor_stand,tag=KooriIrrigator]

## Kill if no cauldron
execute unless block ~ ~1 ~ cauldron run function koori_farming:blocks/irrigator/remove_irrigator
execute if score @s KooriIrrigCount matches 2.. run function koori_farming:blocks/irrigator/remove_irrigator