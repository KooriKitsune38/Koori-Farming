    ## Scoreboards ##
scoreboard objectives add KooriIrrigTimer dummy
scoreboard objectives add KooriIrrigBoost dummy
scoreboard objectives add KooriIrrigCount dummy


#scoreboard objectives add KooriHFCount dummy
scoreboard objectives add KooriHFMovement dummy
scoreboard objectives add KooriHFCropCalc dummy
scoreboard objectives add KooriHFCropCount dummy
scoreboard objectives add KooriHFCarrots dummy
scoreboard objectives add KooriHFPotatoes dummy
scoreboard objectives add KooriHFWheat dummy
scoreboard objectives add KooriHFWheatS dummy
scoreboard objectives add KooriHFBeetroots dummy
scoreboard objectives add KooriHFBeetrootS dummy
scoreboard objectives add KooriHFBerries dummy

## Values
scoreboard players set .64 KooriHFCropCalc 64
scoreboard players set .1 KooriHFCropCalc 1

## Tell its reloaded ##
tellraw @a [{"text":"[Koori Farming] ","color": "#bb6800"},{"text": "Live to farm, farm to not die.","color": "#e3ff04"}]