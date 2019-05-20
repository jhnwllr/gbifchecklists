

readBackBone = function(homeDir) {

  backbone  = data.table::fread(
    homeDir %+% "backBoneGBIF.tsv",
    nrows=Inf,
    select = c("taxonID","taxonomicStatus","taxonRank","kingdom","class","phylum","order","genus")
  ) %>%
    as_tibble()

  return(backbone)
}
