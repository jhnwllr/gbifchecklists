

# global publishers

filterGlobalPublishers = function(D) {

# removing large global publishers that do not publish regional checklists
D = D %>%
  gbifapi::addPublishingOrganizationKey(datasetkey) %>%
  filter(!publishingOrganizationKey == "92f51af1-e917-49bc-a8ed-014ed3a77bec") %>%  # Institute of Biodiversity, Animal Health
  filter(!publishingOrganizationKey == "fbca90e3-8aed-48b1-84e3-369afbd000ce") %>%  # GBIF Secretariat
  filter(!publishingOrganizationKey == "315b3c03-4a0a-424e-83a5-d25aa748e666") %>%  # Scratchpads
  filter(!publishingOrganizationKey == "72da316f-62b4-451e-9238-cf72289e6372") %>% # The International Plant Names Index
  filter(!publishingOrganizationKey == "d1f6b74b-1d53-44db-bed5-d08497095900") %>% # World Register of Marine Species
  filter(!publishingOrganizationKey == "bc092ff0-02e4-11dc-991f-b8a03c50a862") %>%  # National Museum of Natural History
  filter(!publishingOrganizationKey == "8bf297bb-ec4e-4165-97f5-f250109480c0") %>%  # Global Names Architecture
  filter(!publishingOrganizationKey == "2174414a-9b2a-4774-85f1-2a9c54c28ca9") %>%  # OBIS Australia
  filter(!publishingOrganizationKey == "1ce482ab-14e3-48f0-8b70-b58b14625902") %>%  # Index Fungorum Partnership
  filter(!publishingOrganizationKey == "b711353c-44d7-4e8b-90c5-16fea0d247e0") %>%  # Paleobiology Database
  filter(!publishingOrganizationKey == "f2f462db-541d-4a24-9921-892d57e1da9f") %>%  # International Commission on Zoological Nom
  filter(!publishingOrganizationKey == "47a779a6-a230-4edd-b787-19c3d2c80ab5") %>%  # Species File Group
  filter(!publishingOrganizationKey == "57254bd0-8256-11d8-b7ed-b8a03c50a862") %>%  # Botanic Garden and Botanical Museum
  filter(!publishingOrganizationKey == "e2e717bf-551a-4917-bdc9-4fa0f342c530") %>%  # Cornell Lab of Ornithology
  filter(!publishingOrganizationKey == "e88c96a3-5884-4e51-a580-e417ca4c9eed") %>%  # Royal Belgian Institute of Natural
  filter(!publishingOrganizationKey == "1249271c-25ff-45c2-adb3-264dd38798b5") %>%  # International Ornithologists Union
  filter(!publishingOrganizationKey == "b289cfec-b50c-4845-b142-d20a1739b9fd") %>%  # Wikimedia Foundation
  filter(!publishingOrganizationKey == "0870a77b-587c-4369-a8ed-bc3d347b8e1c") %>%  # PlutoF
  filter(!publishingOrganizationKey == "2f2e4f28-d929-4609-937b-9a8ebd265159") %>%  # NCBI Taxonomy
  filter(!publishingOrganizationKey == "463555b0-d081-11da-ae8f-b8a03c50a862") %>%  # Leibniz Institute DSMZ
  filter(!publishingOrganizationKey == "4c05ab8a-89b2-4b5f-9a90-14c0c2c7fd37") %>%  # Florida International University
  filter(!publishingOrganizationKey == "061b4f20-f241-11da-a328-b8a03c50a862") %>%  # Kew Gardens
  filter(!publishingOrganizationKey == "149b9411-e994-4416-a218-f2ef21173e44") %>%  # Agricultural Research Council
  filter(!publishingOrganizationKey == "b872b075-9ab5-4e27-b6c6-5add6b890379") %>%  # BioFresh
  filter(!publishingOrganizationKey == "6a02679f-abc6-4bef-9433-f1dae746e68d") %>%  # The Tree of Life Web Project
  filter(!datasetkey == "7ddf754f-d193-4cc9-b351-99906754a03b") %>%  # Catalogue of Life
  filter(!datasetkey == "0a2eaf0c-5504-4f48-a47f-c94229029dc8") %>%  # World Register of Introduced Marine Species (WRiMS)
  filter(!datasetkey == "bd0a2b6d-69d1-4650-8bb1-829c8f92035f") %>%  # Biodiversity inventories in high gear: DNA barcoding
  filter(!datasetkey == "c5e74a7d-f81d-43d5-9cb3-dc31d914e3ed") %>%  # Indices Nominum Supragenericorum Plantarum Vascularium
  filter(!datasetkey == "bd9063be-ff50-4ccd-ad69-3819e3fc7d97") %>%  # A nomenclator of extant and fossil taxa of the Melanopsidae
  filter(!datasetkey == "d51d750d-3374-4f2c-81ff-860b8e592da4")  # Catalogue of the mite families Ascidae Voigts & Oudemans

  return(D)
}

