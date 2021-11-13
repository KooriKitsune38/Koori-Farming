tp @s ~ ~ ~ ~5 ~
particle rain ^ ^-.7 ^-1 .25 .25 .25 1 3 force

## Change model to active
execute unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:3801}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 3801

## Irrigation Timer
scoreboard players add @s KooriIrrigTimer 1
execute if score @s KooriIrrigTimer matches 24001.. run function koori_farming:blocks/irrigator/dry_cauldron

## Boost Timer
scoreboard players add @s KooriIrrigBoost 1
execute if score @s KooriIrrigBoost matches 3001.. run function koori_farming:blocks/irrigator/boost_crops

## Irrigate
fill ~-1 ~-1 ~-1 ~1 ~-2 ~1 farmland[moisture=7] replace farmland
fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 farmland[moisture=7] replace farmland