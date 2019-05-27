
# check for unTagged checklists with a certain amount of names

checkForUntaggedDatasets = function(count) {

  namespace = "checklistCountryCode.jwaller.gbif.org"

  currentTagsDatasetkeys = gbifMachineTagger::getMachineTagData(namespace) %>% # get current machine tags
    select(datasetkey,iso2=value) %>%
    pull(datasetkey)

  curatedDatasekeys = gbifchecklists::getCurationData() %>% pull(datasetkey)

  untagged = gbifchecklists::getAllChecklistData() %>%
    filter(!datasetkey %in% currentTagsDatasetkeys) %>% # already tagged
    filter(!datasetkey %in% curatedDatasekeys) %>% # checked but not regional or tied to country
    filter(count > !!count) %>%
    gbifchecklists::filterGlobalPublishers()

  return(untagged)
}


