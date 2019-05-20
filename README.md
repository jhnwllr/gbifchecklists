
# gbifchecklists

R package for working with GBIF checklist data. 

# How to manually curate checklists with country codes 



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

D = getCurationData() %>% # loads data.frame of curated datasets 
filter(!is.na(iso2)) %>% 
select(datasetkey,iso2) 

# api = "http://api.gbif.org/v1/dataset/"
api = "http://api.gbif-uat.org/v1/dataset/" # used for testing

namespace = "checklistCountryCode.jwaller.gbif.org"
name = "checklistCountryCode"

# load("authentication.rda")
authentication = list(user="",password="") # need to fill in order to use

updateAllMachineTags(D,api,namespace,name,value="iso2",authentication)

```

Code to delete all of the machine tags created above

```

deleteAllMachineTags(D,api,namespace,authentication)

```

Api call in order to get all of the datasets with country codes attached. 

```
http://api.gbif.org/v1/dataset?machineTagNamespace=checklistCountryCode.jwaller.gbif.org&limit=100
```
