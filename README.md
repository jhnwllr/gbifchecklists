
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
# update only new tags  

library(gbifMachineTagger)
library(gbifchecklists)
library(dplyr)
library(roperators)
library(httr)
library(purrr)


# Get all local manually curated dataset keys
manuallyCuratedData = gbifchecklists::getCurationData() %>% # manually curated data 
filter(!is.na(iso2)) %>% # remove those missing iso2 value
select(datasetkey,iso2) %>% 
rbind(gbifchecklists::getDefaultCountryCodesData()) %>% # and default publishers  
gbifchecklists::addISSGChecklists() %>% # and ISSG publishers
unique() 

machineTaggedDatasekeys = gbifMachineTagger::getMachineTagData(namespace= "checklistCountryCode.jwaller.gbif.org") %>% # get current machine tags
select(datasetkey,iso2=value) %>%
pull(datasetkey)

dataToUpdate = manuallyCuratedData %>%
filter(!datasetkey %in% !!machineTaggedDatasekeys) # get datasets that don't already have that same value

dataToUpdate # should not be too much probably 

api = "http://api.gbif.org/v1/dataset/"

namespace = "checklistCountryCode.jwaller.gbif.org"
name = "checklistCountryCode"

load("C:/Users/ftw712/Desktop/griddedDatasets/authentication.rda")
updateAllMachineTags(D=dataToUpdate,api,namespace,name,value="iso2",authentication)

```

Code to delete all of the machine tags created above

```

deleteAllMachineTags(D,api,namespace,authentication)

```

Api call in order to get all of the datasets with country codes attached. 

```
http://api.gbif.org/v1/dataset?machineTagNamespace=checklistCountryCode.jwaller.gbif.org&limit=500
```
