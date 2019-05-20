


step2_getTaxonkeysForEachChecklistDatasetkey = function(countries="",homeDir = "C:/Users/ftw712/Desktop/gbif checklists/data/", Step=1000,maxPages=200) {

  D = readRDS(file= homeDir %+% "countryChecklists.rda")

  # only get those with one country match
  keysToKeep = D %>%
    group_by(datasetkey) %>%
    summarise(count = n()) %>%
    arrange(-count) %>%
    filter(count == 1) %>%
    pull(datasetkey)

  # 11 885 datasetkeys to get taxonkeys from
  D = D %>%
    filter(datasetkey %in% !!keysToKeep) %>%
    filter(country %in% !!countries)

  print(D)

  # get taxonkeys for each checklist datasetkey
  taxonkey = D$datasetkey %>%
    map(~ page_api(url="https://www.gbif.org/api/species/search?dataset_key=" %+% .x,pluck="results",Step=Step,maxPages=maxPages,verbose=TRUE) %>%
          map_chr(~ .x$key)
    )

  checklistData = D %>%
    tibble::add_column(taxonkey)

  glimpse(checklistData)
  saveRDS(checklistData,file= homeDir %+% "checklistDataTaxonkey.rda")

  return(checklistData)
}
