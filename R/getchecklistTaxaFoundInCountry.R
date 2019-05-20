


getchecklistTaxaFoundInCountry = function(homeDir,countries) {

  Files = list.files(homeDir)
  Files = Files[Files %in% countries]

  D = Files %>% map(~ readRDS(file=homeDir %+% .x %+% "/" %+% "checklistTaxaFoundInCountry.rda")) %>%
    plyr::rbind.fill()

  return(D)
}

