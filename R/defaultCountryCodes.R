


defaultCountryCodes = function(D,default,publishing_org) {

  url="http://api.gbif.org/v1/dataset/search?type=CHECKLIST&publishing_org=" %+% publishing_org

  L = gbifapi::page_api(url,pluck="results",Step=1000,maxPages=30,verbose=TRUE) # list of checklists

  datasetkey = L %>%
    map_chr(~ .x$key)

  d = tibble(datasetkey,iso2=default)
  D = rbind(D,d)

  return(D)
}


