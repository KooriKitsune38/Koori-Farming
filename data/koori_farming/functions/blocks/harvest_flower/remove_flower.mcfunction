
playsound block.beacon.deactivate block @a ~ ~ ~ 0.3 2
particle end_rod ~ ~.5 ~ .2 .2 .2 0.1 25 force

# Summon Item
summon item ~ ~.5 ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:3802,FarmerID:"harvesting_flower",display:{Name:'{"text":"Harvesting Flower","italic": false}'},EntityTag:{Silent:1b,Fixed:1b,Invisible:1b,Invulnerable:1b,Tags:["KooriHarvestFlower"]}}}}

# Summon bag
summon item ~ ~.5 ~ {Tags:["KooriHFBag"],PickupDelay:10s,Item:{id:"minecraft:compass",Count:1b,tag:{CustomModelData:3802,FarmerID:"harvesting_flower_bag",display:{Name:'{"text":"harvesting Flower Bag","italic": false}'}}}}
data modify entity @e[type=item,tag=KooriHFBag,sort=nearest,limit=1,distance=..1] Item.tag set from entity @s ArmorItems[3].tag
execute as @e[type=item,tag=KooriHFBag,sort=nearest,limit=1,distance=..1] at @s run function koori_farming:blocks/harvest_flower/drop/drop_bag

kill @s