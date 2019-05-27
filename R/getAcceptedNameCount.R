

getAcceptedNameCount = function(D) {

acceptedNameCount = D %>%
  pull(datasetkey) %>%
  map(~
        GET("https://www.gbif.org/api/species/search?dataset_key=" %+% .x %+% "&facet=status&limit=0&origin=SOURCE") %>%
        content() %>%
        pluck("facets")
  ) %>%
  map( ~.x$STATUS$counts$ACCEPTED$count) %>%
  map_if(is_empty, ~ NA_character_) %>%
  flatten_chr() %>%
  as.numeric()

return(acceptedNameCount)
}


addAcceptedNameCount = function(D) {

  acceptedNameCount = D %>%
    pull(datasetkey) %>%
    map(~
          GET("https://www.gbif.org/api/species/search?dataset_key=" %+% .x %+% "&facet=status&limit=0&origin=SOURCE") %>%
          content() %>%
          pluck("facets")
    ) %>%
    map( ~.x$STATUS$counts$ACCEPTED$count) %>%
    map_if(is_empty, ~ NA_character_) %>%
    flatten_chr() %>%
    as.numeric()

  D = D %>% add_column(acceptedNameCount)

  return(D)
}



