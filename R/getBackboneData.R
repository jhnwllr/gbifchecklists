getBackboneData = function(homeDir, groupRank,backbone,occurrences) {

  homeDir = "C:/Users/ftw712/Desktop/gbif checklists/data/gbif backbone/"

  # select # fread select

  nrows = Inf

  occurrences = occurrences %>%
    rename(rank=taxonRank) %>%
    mutate(taxonomicStatus = tolower(taxonomicStatus)) %>%
    mutate(rank = tolower(rank)) %>%
    filter(taxonomicStatus == "accepted")

  backbone = backbone %>%
    rename(rank=taxonRank,taxonKey=taxonID) %>%
    filter(taxonomicStatus == "accepted")

  speciesOccurrences = occurrences %>% pull(taxonKey) %>% unique()

  D = backbone %>%
    filter(rank == "species") %>%
    mutate(hasOcc = taxonKey %in% !!speciesOccurrences) %>%
    group_by(!! groupRank,hasOcc) %>%
    summarise(count = n()) %>%
    ungroup() %>%
    group_by(!! groupRank) %>%
    mutate(total = sum(count)) %>%
    filter(hasOcc) %>%
    rename(sciName = !! groupRank) %>%
    arrange(-count)


  return(D)
}
