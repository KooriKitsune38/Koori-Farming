tp @s ^ ^ ^ ~-90 ~
playsound minecraft:item.trident.hit_ground block @a ~ ~ ~ 0.01 .3
particle cloud ~ ~.5 ~ .2 .2 .2 0.02 2 force
tag @s add KooriHFMoved
tag @s remove MovedBackTwice
tag @s remove MovedBackOnce