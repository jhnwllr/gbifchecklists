


addISSGChecklists = function(D) { # process and get country codes for ISSG

  publishing_org = "cdef28b1-db4e-4c58-aa71-3c5238c2d0b5" # ISSG

  url="http://api.gbif.org/v1/dataset/search?type=CHECKLIST&publishing_org=" %+% publishing_org

  L = gbifapi::page_api(url,pluck="results",Step=1000,maxPages=30,verbose=TRUE) # list of checklists

  datasetkey = L %>%
    map_chr(~ .x$key)

  countryCodes = L %>% # process the countrycodes
    map(~ .x$keywords) %>%
    map(~ flatten_chr(.x)) %>%
    map(~ str_subset(.x,"country_")) %>%
    map(~ str_replace_all(.x, "country_","")) %>%
    map(~ str_split(.x,"-")) %>%
    map(~ flatten_chr(.x)) %>%
    map_if(is_empty, ~ NA_character_)

  acceptedGBIFCodes = rgbif::isocodes %>% pull(code) # only tag accepted codes

  d = tibble(datasetkey,countryCodes) %>%
    unnest() %>%
    filter(countryCodes %in% acceptedGBIFCodes) %>%
    rename(iso2 = countryCodes)

  D = rbind(D,d)

  return(D)
}


