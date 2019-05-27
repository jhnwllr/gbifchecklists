


defaultCountryCodes = function(D=NULL,default,publishing_org) {

  # if(is.null(D)) D = tibble(datasetkey="",iso2="")

  url="http://api.gbif.org/v1/dataset/search?type=CHECKLIST&publishing_org=" %+% publishing_org

  L = gbifapi::page_api(url,pluck="results",Step=1000,maxPages=30,verbose=TRUE) # list of checklists

  datasetkey = L %>%
    map_chr(~ .x$key)

  d = tibble(datasetkey,iso2=default)
  if(!is.null(D)) {
    D = rbind(D,d)
  } else {D = d}

  return(D)
}


