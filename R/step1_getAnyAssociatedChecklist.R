# library(gbifapi)
# library(dplyr)
# library(purrr)
# library(roperators)
# library(httr)

# save at "C:/Users/ftw712/Desktop/gbif checklists/data/countryChecklists.rda"

# get a checklist associated with the generic country name.
# This is the first step in getting checklist potentially associated with a region.
# This is a very rough step and will give a lot of false positives.
# step2_ and later steps will clean out these false positives

step1_getAnyAssociatedChecklist = function() { # countryChecklists

  countries = countrycode::codelist %>%
    select(genc.name,iso2c) %>%
    mutate(lowerCountry = tolower(genc.name)) %>%
    na.omit()

  searchCountry = countries$lowerCountry

  D = searchCountry %>%
    map(~ page_api(url="http://api.gbif.org/v1/dataset/search?q=" %+% .x %+% "&type=CHECKLIST",pluck="results",Step=1000,maxPages=20) %>%
          map_chr(~ .x$key)) %>%
    set_names(searchCountry) %>%
    tibble::enframe() %>% # convert list to a data.frame()
    tidyr::unnest() %>%
    rename(country=name,datasetkey=value) %>%
    gbifapi::addPublishingOrganization(datasetkey)

  glimpse(D)
  saveRDS(D,file="C:/Users/ftw712/Desktop/gbif checklists/data/countryChecklists.rda")

  return(D)
}
