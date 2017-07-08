# ----
# Downloading BEA economic Data using the BEA API with R
#
# author: @lachlandeer
# ----

## Load Library
library(bea.R)

## Source API key
source('../apiKey/beaKey.R')

# data parameters
regional <- beaParams(beaKey=my_bea_key, 'RegionalProduct')

### what GDP variables are available
components <- beaParamVals(my_bea_key, 'RegionalProduct', 'Component')

### what industries are available
industries <- beaParamVals(my_bea_key, 'RegionalProduct', 'IndustryId')

# Construct List to send
userSpecList <- list('UserID' = my_bea_key,
                     'Method' = 'GetData',
                     'datasetname' = 'RegionalProduct',
                     'Component' = 'RGDP_SAN',
                     'GeoFips' = 'STATE',
                     'IndustryId' = 1, # All Industries
                     'Year' = 'ALL')

# Pull data and save as csv
real_gdp_state <- beaGet(userSpecList, asTable = TRUE)
write.csv(real_gdp_state, file = '../../out/data/read_gdp_state.csv' ,row.names = FALSE)
