## Kill if no chest
execute unless block ~ ~ ~ chest run function koori_farming:blocks/harvest_flower/storage/remove_storage

## Kill if chests nearby
execute if predicate koori_farming:harvest_flower/storage/chests_check run function koori_farming:blocks/harvest_flower/storage/remove_storage

## Thank you Faited for the idea ##