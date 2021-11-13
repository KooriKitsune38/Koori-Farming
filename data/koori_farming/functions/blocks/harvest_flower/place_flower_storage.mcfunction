kill @s
playsound block.wood.place block @a ~ ~ ~
setblock ~ ~ ~ chest

execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["KooriFlowerStorage"],Invisible:1b,Marker:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:3803,FarmerID:"flower_storage",display:{Name:'{"text":"Flower Storage","italic": false}'},EntityTag:{Silent:1b,Fixed:1b,Invisible:1b,Invulnerable:1b,Tags:["KooriFlowerStorage"]}}}]}