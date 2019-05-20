# check if a country name or some free text is in the title of description of checklist dataset
# This is used to filter datasets that might be associated with a region.


getDatasetKeysWithCountry = function(D,country,text="") {

  datasetKeys = D %>%
    filter(country == !!country) %>%
    pull(datasetkey) %>%
    unique()

  datasetInfo = datasetKeys %>%
    map(~GET("http://api.gbif.org/v1/dataset/" %+% .x) %>% content())

  inTitle = datasetInfo %>%
    map(~ .x$title) %>%
    map(~ tolower(.x)) %>%
    map(~stringr::str_detect(.x, text)) %>%
    map_if(is_empty, ~ FALSE) %>% # if the title is empty then put FALSE
    flatten_lgl()

  inDescription = datasetInfo %>%
    map(~ .x$description) %>%
    map(~ tolower(.x)) %>%
    map(~stringr::str_detect(.x, text)) %>%
    map_if(is_empty, ~ FALSE) %>% # if the description is empty then put FALSE
    flatten_lgl()

  datasetKeyWithCountry = datasetKeys[inTitle | inDescription]

  return(datasetKeyWithCountry)
}
