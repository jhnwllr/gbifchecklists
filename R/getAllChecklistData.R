# Get all checklist data

# all checklist data with name counts


getAllChecklistData = function(Step=1000,maxPages=100,verbose=TRUE) {

url="http://api.gbif.org/v1/dataset/search?type=CHECKLIST"

# only 30K checklist datasets
L = gbifapi::page_api(url,pluck="results",Step=Step,maxPages=maxPages,verbose=verbose) # list of checklists

datasetkey = L %>%
  map_chr(~ .x$key)

count = L %>%
  map(~ .x$recordCount) %>%
  map_if(is_empty, ~ NA_character_) %>%
  flatten_chr() %>%
  as.numeric()

D = tibble(datasetkey,count)

return(D)
}

