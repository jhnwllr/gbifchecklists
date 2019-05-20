

# checklist taxa found in country

checklistTaxaFoundInCountryPipeLine = function(D,text,country,countrycode,Step,maxPages) {

  print(country)
  print(text)
  print(countrycode)

  D = D %>%
    gbifchecklists::inTitleOrDescription(text,country) %>% # keep dataset if country in title or description
    gbifchecklists::taxaFoundInCountry(countrycode=countrycode,Step=Step,maxPages=maxPages) # get all taxa in country

  return(D)
}
