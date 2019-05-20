
# check if country or text is in description of title


inTitleOrDescription = function(D,text,country) {

  datasetKeysWithCountry = text %>%
    map(~ gbifchecklists::getDatasetKeysWithCountry(D,country = country,text=.x)) %>%
    flatten_chr() %>%
    unique()

  D = D %>%
    filter(datasetkey %in% datasetKeysWithCountry)

  return(D)
}
