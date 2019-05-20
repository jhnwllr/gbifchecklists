

step3_getTaxonInfoForEachTaxonKey = function(homeDir = "C:/Users/ftw712/Desktop/gbif checklists/data/") {

  D = readRDS(file= homeDir %+% "checklistDataTaxonkey.rda")

  D = D %>%
    tidyr::unnest() %>%
    gbifapi::addTaxonInfo(taxonkey,moreInfo=TRUE) %>% # get just nubKey
    select(country, datasetkey, publishingOrganizationKey, publishingOrganizationTitle, taxonkeyOriginal = taxonkey, taxonkey = nubKey) %>%
    gbifapi::addTaxonInfo(taxonkey,moreInfo=TRUE) # now get real taxon status

  glimpse(D)
  saveRDS(D,file= homeDir %+% "checklistDataTaxonkeyTaxonInfo.rda")
}



