# ----
# Downloading BEA economic Data using the BEA API with R
#
# author: @lachlandeer
# ----

## Load Library
library(bea.R)

## Source API key
source('../apiKey/beaKey.R')

#
regional <- beaParams(beaKey=my_bea_key, 'RegionalProduct')

regional2 <- beaParamVals(my_bea_key, 'RegionalProduct', 'Component')


userSpecList <- list('UserID' = my_bea_key,
                     'Method' = 'GetData',
                     'datasetname' = 'RegionalProduct',
                     'Component' = 'RGDP_SAN',
                     'GeoFips' = 'STATE',
                     'IndustryId' = 1,
                     'Year' = 'ALL')
BDT <- beaGet(userSpecList, asTable = TRUE)
