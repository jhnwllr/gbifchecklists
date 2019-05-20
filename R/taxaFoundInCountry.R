
#



taxaFoundInCountry = function(D,countrycode="AF",Step=1000,maxPages=1) {

  taxonKeysCountry = gbifapi::getTaxonKeysCountry(countrycode=countrycode,Step=Step,maxPages=maxPages,keyRank = "speciesKey") %>%
    as.character()

  D = D %>%
    mutate(taxaFoundInCountry = nubKey %in% taxonKeysCountry)

  # gbifapi::addTaxonInfo(taxonkey) %>%
  # mutate(countrycode = !!countrycode)
  # filter(!taxonKey %in% taxonKeysCountry) %>%

  return(D)
}
