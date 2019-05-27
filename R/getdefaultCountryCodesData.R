
getDefaultCountryCodesData = function() {

  default = tibble::tribble(
    ~iso2, ~publishing_org,
    "DK", "299958e0-4c06-11d8-b290-b8a03c50a862",
    "DE", "0674aea0-a7e1-11d8-9534-b8a03c50a862",
    "CA","c6d28eaf-bc7f-48f2-a9fc-e7037467c8be",
    "LR","c6d28eaf-bc7f-48f2-a9fc-e7037467c8be",
    "CN","a2fa5b68-3ebf-4845-abc5-f456d251386f",
    "CO","2a7e3080-28a9-11dd-97cd-b8a03c50a862",
    "CO","530adb60-b968-4804-8571-4e8f74b9539d",
    "GH","1d8f8bde-252a-42f1-acee-858b918b8cff",
    "TG","d2583793-e5c1-41ae-83bd-86300d34e2cb",
    "MY","63a08e67-8d4e-4653-82d7-c133b136527f",
    "GY","e7cc89db-d984-4b46-bf67-fb2ffdcf1e22",
    "CO","e1050db2-9faf-4d72-b860-295debaf9d2a",
    "CO","65740d6c-d782-442e-9e0c-ebb9493ef22a",
    "KE","d8d6c888-92e7-4036-9808-fb3812be61e1",
    "CO","a665e604-14e4-4aba-b93d-53755968eb14",
    "CO","882d4191-4161-4fde-9e94-20fbb44901c8",
    "SR","6e5e2c90-092d-4d38-95de-23a5d293e3e7",
    "BR","9e1ad169-1f58-48fb-ad7a-3b2b4544d875",
    "CO","8251fe14-04e1-483f-9ae6-46cf83ff76fa",
    "MU","98bb2db4-4405-4e77-a568-fc596f29177c",
    "CO","06867940-0867-4b4a-abb2-a57a16fcf2dc",
    "LR","ffa16949-1a2d-45c7-a3af-726e6d227d18",
    "TG","50e959f4-fec1-44b7-9e03-04fab5cfd3c3",
    "CO","a705fc03-2aaa-4f52-af96-bd6f3000df4f",
    "CO","fbe29d53-6c40-411a-8e97-2d92a285c88e",
    "CO","b98ce289-a492-4bcf-8e57-623ddfadab10",
    "CO","818287d7-e542-4890-8442-e07b9d080bf8",
    "US","b6d09100-919d-4026-b35b-22be3dae7156",
  )

  defaultCountryCodes = default %>%
    transpose() %>%
    map( ~
           gbifchecklists::defaultCountryCodes(D = NULL,default = .x$iso2, publishing_org = .x$publishing_org)
    ) %>%
    plyr::rbind.fill()

  return(defaultCountryCodes)
}


