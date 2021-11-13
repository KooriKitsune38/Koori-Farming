tp @s ^ ^ ^ ~180 ~
playsound minecraft:item.trident.hit_ground block @a ~ ~ ~ 0.01 .3
particle cloud ~ ~.5 ~ .2 .2 .2 0.02 2 force
tag @s add KooriHFMoved
tag @s[tag=MovedBackOnce] add MovedBackTwice
tag @s add MovedBackOnce
execute if entity @s[tag=MovedBackTwice] run function koori_farming:blocks/harvest_flower/movement/turn_90