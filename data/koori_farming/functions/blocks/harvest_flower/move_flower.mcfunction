scoreboard players reset @s KooriHFMovement
tag @s remove KooriHFMoved

## Terracottas 
 #North
execute unless entity @s[tag=KooriHFRotated] if block ~ ~-.5 ~ magenta_glazed_terracotta[facing=north] run function koori_farming:blocks/harvest_flower/movement/turn_north
 #South
execute unless entity @s[tag=KooriHFRotated] if block ~ ~-.5 ~ magenta_glazed_terracotta[facing=south] run function koori_farming:blocks/harvest_flower/movement/turn_south
 #West
execute unless entity @s[tag=KooriHFRotated] if block ~ ~-.5 ~ magenta_glazed_terracotta[facing=west] run function koori_farming:blocks/harvest_flower/movement/turn_west
 #East
execute unless entity @s[tag=KooriHFRotated] if block ~ ~-.5 ~ magenta_glazed_terracotta[facing=east] run function koori_farming:blocks/harvest_flower/movement/turn_east

## Forward
execute if entity @s[tag=!KooriHFMoved] if block ^ ^-.5 ^1 #koori_farming:farm_lands if block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_forward

## Obstacle 1 block forward
execute if entity @s[tag=!KooriHFMoved] unless block ~ ~.5 ~ redstone_lamp unless block ^ ^-.5 ^1 #koori_farming:farm_lands if block ^ ^-.5 ^2 #koori_farming:farm_lands if block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles if block ^ ^.5 ^2 #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_1b_forward

## Obstacle 2 blocks forward
execute if entity @s[tag=!KooriHFMoved] unless block ~ ~.5 ~ redstone_lamp unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^ ^-.5 ^2 #koori_farming:farm_lands if block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles if block ^ ^.5 ^2 #koori_farming:harvest_flower_obstacles if block ^ ^.5 ^3 #koori_farming:harvest_flower_obstacles if block ^ ^-.5 ^3 #koori_farming:farm_lands run function koori_farming:blocks/harvest_flower/movement/move_2b_forward

## Obstacle 3 blocks forward
execute if entity @s[tag=!KooriHFMoved] unless block ~ ~.5 ~ redstone_lamp unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^ ^-.5 ^2 #koori_farming:farm_lands unless block ^ ^-.5 ^3 #koori_farming:farm_lands if block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles if block ^ ^.5 ^2 #koori_farming:harvest_flower_obstacles if block ^ ^.5 ^3 #koori_farming:harvest_flower_obstacles if block ^ ^.5 ^4 #koori_farming:harvest_flower_obstacles if block ^ ^-.5 ^4 #koori_farming:farm_lands run function koori_farming:blocks/harvest_flower/movement/move_3b_forward

## Left
execute if entity @s[tag=KooriHFLeft,tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands if block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^.5 ^ #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_left

execute if entity @s[tag=KooriHFLeft,tag=!KooriHFMoved] unless block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles if block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^.5 ^ #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_left

## Right
execute if entity @s[tag=KooriHFRight,tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands if block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^.5 ^ #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_right

execute if entity @s[tag=KooriHFRight,tag=!KooriHFMoved] unless block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles if block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^.5 ^ #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_right

## Turn Left
execute if entity @s[tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^.5 ^ #koori_farming:harvest_flower_obstacles unless block ^1 ^-.5 ^-1 #koori_farming:farm_lands run function koori_farming:blocks/harvest_flower/movement/turn_-90

execute if entity @s[tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^.5 ^ #koori_farming:harvest_flower_obstacles unless block ^1 ^.5 ^-1 #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/turn_-90

## Turn Right
execute if entity @s[tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^.5 ^ #koori_farming:harvest_flower_obstacles unless block ^-1 ^-.5 ^-1 #koori_farming:farm_lands run function koori_farming:blocks/harvest_flower/movement/turn_90

execute if entity @s[tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^.5 ^ #koori_farming:harvest_flower_obstacles unless block ^-1 ^.5 ^-1 #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/turn_90

## Left - Corner
execute if entity @s[tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^1 ^.5 ^ #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_left

## Right - Corner
execute if entity @s[tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^-.5 ^ #koori_farming:farm_lands if block ^-1 ^.5 ^ #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/move_right

## Back - Closed
#With Farmland (Forward)
execute if entity @s[tag=!KooriHFMoved] if block ^ ^-.5 ^1 #koori_farming:farm_lands unless block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/turn_back

#Without Farmland (Forward)
execute if entity @s[tag=!KooriHFMoved] unless block ^ ^-.5 ^1 #koori_farming:farm_lands run function koori_farming:blocks/harvest_flower/movement/turn_back

#Obstacle Ahead
execute if entity @s[tag=!KooriHFMoved] unless block ^ ^.5 ^1 #koori_farming:harvest_flower_obstacles run function koori_farming:blocks/harvest_flower/movement/turn_back