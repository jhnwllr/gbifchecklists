

readOccurrences = function(homeDir) {

  occurrences = data.table::fread(
    homeDir %+% "speciesListGBIF.csv",
    nrows=Inf,
    select = c("taxonKey","taxonomicStatus","taxonRank","kingdom","phylum","class","order","genus")
    ) %>%
    as_tibble()

  return(occurrences)
}

