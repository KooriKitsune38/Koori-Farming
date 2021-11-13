## Movement
scoreboard players add @s KooriHFMovement 1
execute if score @s KooriHFMovement matches 46.. unless block ^ ^1 ^ redstone_lamp[lit=true] unless block ~ ~-.5 ~ air if entity @e[type=armor_stand,tag=KooriFlowerStorage,distance=..20] align xzy positioned ~.5 ~ ~.5 run function koori_farming:blocks/harvest_flower/move_flower
#execute if score @s KooriHFMovement matches 6.. run function koori_farming:blocks/harvest_flower/move_flower

## Name with and without storage
execute if entity @e[type=armor_stand,tag=KooriFlowerStorage,distance=..20] run data merge entity @s {CustomName:'{"text":""}',CustomNameVisible:0b}
execute unless entity @e[type=armor_stand,tag=KooriFlowerStorage,distance=..20] run data merge entity @s {CustomName:'{"text":"                     No Storage","color": "red","bold": true}',CustomNameVisible:1b}


## Scream if bobber
#execute if entity @e[type=fishing_bobber,distance=..1] run function koori_farming:blocks/harvest_flower/scream
## Rotate if Bobber
execute if entity @s[tag=KooriHFHasBobber] unless entity @e[type=fishing_bobber,distance=...8] run function koori_farming:blocks/harvest_flower/rotate_if_bobber
tag @s remove KooriHFHasBobber
execute if entity @e[type=fishing_bobber,distance=...8] run tag @s add KooriHFHasBobber

## Crops
execute if block ~ ~ ~ #koori_farming:harvest_flower_crops run function koori_farming:blocks/harvest_flower/harvest/harvest_crop

## Flower Count
#execute store result score @s KooriHFCount if entity @e[distance=...5,type=armor_stand,tag=KooriHarvestFlower]
#execute if score @s KooriHFCount matches 2.. run function koori_farming:blocks/harvest_flower/remove_flower

## Particle if no storage
execute unless entity @e[type=armor_stand,tag=KooriFlowerStorage,distance=..20] run particle mycelium ~ ~.5 ~ .4 .4 .4 0 1 force

## Kill if no shulker
execute unless entity @e[type=shulker,tag=KooriHarvestShulker,distance=...5] run function koori_farming:blocks/harvest_flower/remove_flower