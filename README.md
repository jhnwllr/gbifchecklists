
# gbifchecklists

R package for working with GBIF checklist data. 

# How to update checklistCountryCode machineTags


1. Installation

```
devtools::install_github("jhnwllr/gbifMachineTagger")
devtools::install_github("jhnwllr/gbifchecklists")
```

2. Run 

```
library(gbifMachineTagger)
library(gbifchecklists)
library(dplyr)
library(roperators)
library(httr)
library(purrr)

namespace = "checklistCountryCode.jwaller.gbif.org"

D = getCurationData() %>% # manually curated data 
filter(!is.na(iso2)) %>% 
select(datasetkey,iso2) 

currentTags = getMachineTagData(namespace) %>% # get current machine tags
select(datasetkey,iso2=value) 

D = rbind(currentTags,D) %>% 
gbifchecklists::defaultCountryCodes(default = "DK",publishing_org = "299958e0-4c06-11d8-b290-b8a03c50a862") %>% # add to data natinal publishers
gbifchecklists::defaultCountryCodes(default = "DE",publishing_org = "0674aea0-a7e1-11d8-9534-b8a03c50a862") %>% 
gbifchecklists::addISSGChecklists() %>%
unique() # only add unique tags 

# load("authentication.rda")
authentication = list(user="",password="") # need to fill in order to use

# api = "http://api.gbif.org/v1/dataset/"
api = "http://api.gbif-uat.org/v1/dataset/"

namespace = "checklistCountryCode.jwaller.gbif.org"
name = "checklistCountryCode"

# deleteAllMachineTags(D,api,namespace,authentication)
updateAllMachineTags(D,api,namespace,name,value="iso2",authentication)

```

Code to delete all of the machine tags created above

```

deleteAllMachineTags(D,api,namespace,authentication)

```

Api call in order to get all of the datasets with country codes attached. 

```
http://api.gbif.org/v1/dataset?machineTagNamespace=checklistCountryCode.jwaller.gbif.org&limit=500
```
