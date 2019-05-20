

step4_checklistTaxaFoundInCountry = function(homeDir,countryData) {

  D = readRDS(file= homeDir %+% "checklistDataTaxonkeyTaxonInfo.rda")

  countryData %>%
    purrr::transpose() %>%
    map(~
          gbifchecklists::checklistTaxaFoundInCountryPipeLine(D,.x$text,.x$country,.x$countrycode,Step=1000,maxPages=200) %>%
          gbifchecklists::saveData(saveDir= homeDir %+% .x$country %+% "/",fileName="checklistTaxaFoundInCountry.rda")
    )

}


