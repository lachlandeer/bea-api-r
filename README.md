# Using `bea.R` to access the BEA's API with R

* contact: @lachlandeer

## What this repo does

* Provide a simple example of how to get data from the BEA API using the `bea.R` package.
* We pull regional GDP by state for each year and save it as a csv.

## Requires:

* A BEA API key
    * register [here](https://www.bea.gov/API/signup/index.cfm)
    * save the key in a variable called `my_bea_key` in file `beaKey.R` stored in the folder `src/apiKey`
* the package `bea.R` from CRAN
    * `install.packages(bea.R)`
