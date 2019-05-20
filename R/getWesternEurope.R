#
# D = readRDS(file="C:/Users/ftw712/Desktop/gbif checklists/data/checklistDataTaxonkeyTaxonInfo.rda")
#
# uniqueCountriesInD = D %>%
#   select(country) %>%
#   unique() %>%
#   pull(country)
#
# westernEuropeCountries = countrycode::codelist %>%
#   filter(region == "Western Europe" | region == "Northern Europe") %>%
#   select(country = genc.name,region) %>%
#   mutate(country = tolower(country)) %>%
#   mutate(country = as.character(country)) %>%
#   filter(country %in% !!uniqueCountriesInD) %>%
#   filter(!country == "svalbard") %>%
#   pull(country)


getWesternEurope = function() {

  westernEurope = tibble::tribble(
    ~country, ~text,~countrycode,
    "austria",c("austria","austrian"),"AT",
    "belgium",c("belgium"),"BE",
    "denmark",c("denmark","danish"),"DK",
    "finland",c("finland","finish"),"FI",
    "france",c("france","french"),"FR",
    "germany",c("germany","german"),"DE",
    "iceland",c("iceland"),"IS",
    "ireland",c("ireland","irish"),"IE",
    "lithuania",c("lithuania"),"LT",
    "netherlands",c("netherlands","holland","dutch"),"NL",
    "norway",c("norway","norwegian"),"NO",
    "sweden",c("sweden","swedish"),"SE",
    "switzerland",c("switzerland","swiss"),"CH",
  )

  return(westernEurope)
}

# library(dplyr)
#
# D = readRDS(file="C:/Users/ftw712/Desktop/gbif checklists/data/checklistDataTaxonkeyTaxonInfo.rda")
#
# uniqueCountriesInD = D %>%
#   select(country) %>%
#   unique() %>%
#   pull(country)
#
# # uniqueCountriesInD
#
# countrycode::codelist$region %>% unique()
#
# westernAfricanCountries = countrycode::codelist %>%
#   filter(region == "Western Africa") %>%
#   select(country = genc.name,region) %>%
#   mutate(country = tolower(country)) %>%
#   mutate(country = as.character(country)) %>%
#   filter(country %in% !!uniqueCountriesInD) %>%
#   pull(country)


getWesternAfrica = function() {

  westernAfrica = tibble::tribble(
    ~country, ~text,~countrycode,
    "benin",c("benin"),"BJ",
    "ghana",c("ghana"),"GH",
    "liberia",c("liberia","liberian"),"LR",
    "mali",c("mali"),"ML",
    "mauritania",c("mauritania"),"MR",
    "niger",c("niger"),"NE",
    "nigeria",c("nigeria","nigerian"),"NG",
    "senegal",c("senegal"),"SN",
    "togo",c("togo"),"TG",
  )

  return(westernAfrica)

}




