# popular groups table coverage

popularGroupsCoverage = function(D) {

  commonNames = tibble::tribble(
    ~commonName, ~rank, ~sciName, ~taxonKey,
    "butterflies and moths", "order", "Lepidoptera", 797,
    "insects", "class", "Insecta", 216,
    "beetles", "order", "Coleoptera", 1470,
    "reptiles", "class", "Reptilia", 358,
    "mammals", "class", "Mammalia", 359,
    "birds", "class", "Aves", 212,
    "flowering plants", "class", "Magnoliopsida", 49,
    "fungi", "kingdom", "Fungi", 5,
    "dragonflies", "order", "Odonata", 789,
    "flies", "order", "Diptera", 811,
    "ants and wasps", "order", "Hymenoptera", 1457,
    "spiders", "order", "Araneae", 1496,
    "gilled mushrooms", "order", "Agaricales", 1499,
    "snails and slugs", "class", "Gastropoda", 255,
    "crabs lobsters shrimp", "order", "Decapoda", 637,
    "conifers", "order", "Pinales", 640,
    "whales", "order", "Cetacea", 733,
    "red algae", "phylum", "Rhodophyta", 106,
    "true bugs", "order", "Hemiptera", 809,
    "bacteria", "kingdom","Bacteria",3,
    "amphibians", "class","Amphibia",131,
  )


  getDataGroupBy = function(D,groupRank) {

    D = D %>%
      select(kingdom,class,order,phylum,nubKey,taxaFoundInCountry) %>%
      unique() %>%
      group_by(kingdom,class,order,phylum,nubKey,taxaFoundInCountry) %>%
      summarise(hasOcc = any(taxaFoundInCountry)) %>%
      ungroup() %>%
      group_by_(groupRank,"hasOcc") %>%
      summarise(count = n()) %>%
      ungroup() %>%
      group_by_(groupRank) %>%
      mutate(total = sum(count)) %>%
      filter(hasOcc) %>%
      rename(sciName = !!groupRank) %>%
      arrange(-count)

    return(D)
  }

  D = c("kingdom","class","order","phylum") %>%
    map(~ getDataGroupBy(D = D,groupRank = .x)) %>%
    plyr::rbind.fill()

  D = merge(D,commonNames,id="sciName") %>%
    select(commonName,count,total) %>%
    mutate(percentage = round((count/total)*100,0)) %>%
    tidyr::gather("group","count",-commonName,-percentage) %>%
    mutate(commonName = forcats::fct_reorder(commonName, count)) %>%
    mutate(group = recode(group, count = "total with occurrences",total = "total in checklists")) %>%
    mutate(percentage = as.character(percentage)) %>%
    mutate(percentLabel = if_else(group == "total in checklists", percentage %+% "%", "")) %>%
    arrange(-count)
  # %>%
    # filter(count > 1)

  return(D)
}




