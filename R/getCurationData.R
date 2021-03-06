
# manually tagged datasets data. There datasets represent fairly large
# datasets that can be tied to a iso2 country code.

getCurationData = function() {

curation = tibble::tribble(
  ~datasetkey,~group,~iso2,~regionComment,
  "0e61f8fe-7d25-4f81-ada7-d970bbb2c6d6", "country", "FR", NA,
  "90d9e8a6-0ce1-472d-b682-3451095dbc5a", "region", NA, "Europe",
  "1bd42c2b-b58a-4a01-816b-bec8c8977927", "region", NA, "Europe",
  "3772da2f-daa1-4f07-a438-15a881a2142c", "country", "CN", NA,
  "de8934f4-a136-481c-a87a-b0b202b80a31", "country", "SE", NA,
  "aacd816d-662c-49d2-ad1a-97e66e2a2908", "country", "BR", NA,
  "4dd32523-a3a3-43b7-84df-4cda02f15cf7", "country", "NL", NA,
  "1ec61203-14fa-4fbd-8ee5-a4a80257b45a", "country", "TW", NA,
  "39653f3e-8d6b-4a94-a202-859359c164c5", "country", "BE", NA,
  "65c9103f-2fbf-414b-9b0b-e47ca96c5df2", "region", NA, "Afrotropical",
  "155b33d2-84b1-4a31-9287-9d9e900bc6c8", "country", "DE", NA,
  "3f8a1297-3259-4700-91fc-acc4170b27ce", "country", "CA", NA,
  "d8fb1600-d636-4b35-aa0d-d4f292c1b424", "region", NA, "Europe",
  "79f243f4-9c38-4305-997f-fa8ac3089dba", "country", "NL", NA,
  "88f4e35a-bdf8-4aa2-9a1b-56401d4eed15", "country", "DE", NA,
  "ec1a0bfb-7d8e-4c6b-bc4d-dfd68a1e844f", "region", NA, "Azores",
  "a43ec6d8-7b8a-4868-ad74-56b824c75698", "region", NA, "Madeira and Selvagens",
  "91fecd78-0986-4713-9c36-77532846ee25", "country", "ES", NA,
  "0b366d90-bd5e-4e7a-ba06-295813334125", "country", "DE", NA,
  "c5725db2-507f-4ec1-96ef-60dccb4de490", "country", "ES", NA,
  "7a9bccd4-32fc-420e-a73b-352b92267571", "country", "CA", NA,
  "8b4ecd20-850f-473e-af8c-dbf5d1e76932", "country", "CO", NA,
  "e1c9e885-9d8c-45b5-9f7d-b710ac2b303b", "country", "TW", NA,
  "d027759f-84bc-4dfc-a5ea-b17a50793451", "country", "DE", NA,
  "a0b06e2e-287a-4687-8a6c-2c0cfb31c16d", "country", "CD", NA,
  "5a71d803-e916-4aac-a373-a2f6010c8f13", "country", "CO", NA,
  "ee2aac07-de9a-47a2-b828-37430d537633", "country", "CO", NA,
  "3f5e930b-52a5-461d-87ec-26ecd66f14a3", "region", NA, "Great Britain, France, Belgium and the Netherlands",
  "2b94a042-fe01-4d9f-8995-d996c21d33cd", "country", "DK", NA,
  "a7350d23-6727-4eb6-ae0b-6f86fc8d6a71", "country", "DK", NA,
  "6a97172b-09ed-4b18-9ade-3b3f4f649825", "country", "SN", NA,
  "0b08c1b1-7031-4c21-acaa-8806048a5380", "country", "TG", NA,
  "b6a01612-c202-4310-9559-caa82aa3f957", "country", "BJ", NA,
  "81100c08-fca6-4b9d-97e5-153dd2b80914", "country", "DK", NA,
  "61de76b3-9ba5-4b0c-a16c-1b554ae8f869", "country", "PT", NA,
  "9042ab45-d31e-47c6-ad1a-38660a7ce9a7", "country", "DK", NA,
  "fc18b0b1-8777-4c8a-8cb8-f9f15870d6a9", "country", "BE", NA,
  "2fc23906-38f3-4bb6-a4a4-4dad908602a2", "country", "BE", NA,
  "6d9e952f-948c-4483-9807-575348147c7e", "country", "BE", NA,
  "56c83fd9-533b-4b77-a67a-cf521816866e", "region", NA, "North America",
  "bc1a1eb3-243d-4e87-b9fa-d35fe0800230", "country", "CO", NA,
  "1288ee7d-d67c-4e23-8d95-409973067383", "country", "GB", NA,
  "7e413e16-cac8-40cd-a7ba-aec020637d28", "country", "BJ", NA,
  "d16563e0-e718-45a9-a20f-3e9fc20613da", "country", "DK", NA,
  "87e99777-7f54-4209-9688-cbf7a9179ebe", "country", "DK", NA,
  "02beaa1b-8f15-44f1-99da-e3971aac9959", "country", "CO", NA,
  "ad5cba8c-45fb-428c-aafa-7ff013d0fdaf", "country", "DK", NA,
  "9e11f45e-f496-42e5-a1a6-9415907a3717", "country", "CO", NA,
  "ca515b82-e301-43ff-9f69-2c0116e1c95b", "region", NA, "Mexico and America",
  "3cabcf37-db13-4dc1-9bf3-e6f3fbfbbe23", "country", "ZA", NA,
  "c6aaec5d-716e-46a1-826b-dc324feb4ede", "country", "CA", NA,
  "7214d7ff-b8a4-4d70-b9b5-98420a63ff09", "country", "VU", NA,
  "6c9c4b08-4cec-4160-a708-7f16060d7db0", "country", "CO", NA,
  "72b3e03d-1d27-4848-bd17-d48f673e0269", "country", "DK", NA,
  "692a0aec-70e2-4038-ac9c-9a1d7acc025f", "country", "FR", NA,
  "9ff7d317-609b-4c08-bd86-3bc404b77c42", "country", "BE", NA,
  "f6ae66a3-f267-4d03-8541-fdfa7ffc9eaf", "country", "IT", NA,
  "bb5f507f-f7de-4a5a-ae7f-ad8abbe68bef", "country", "BE", NA,
  "e7185b08-cfa9-4ed8-b505-9efd732b60ab", "country", "TG", NA,
  "e1231835-c951-4ebc-a3bf-17bffd7692f1", "country", "RU", NA,
  "772de164-541d-4db6-ba38-41ac1c8612c0", "country", "CO", NA,
  "2a25bba9-eb59-461e-b458-a4a609b5154e", "region", NA, "Galapagos",
  "73c0f92b-ea39-4e3f-97aa-d93927bd6448", "country", "CO", NA,
  "c1b14414-6c2f-4985-900f-b6fe7b089a4a", "country", "CO", NA,
  "7185a1d5-9dc2-44fc-b3ef-5e4d068f12f1", "country", "MX", NA,
  "4493273e-47df-487e-b285-f8e5062d2b14", "country", "CO", NA,
  "7e3a2242-46d6-4b90-b80c-42c5d27ed93b", "country", "CO", NA,
  "04daaebb-6917-4c73-a664-8f017819c841", "country", "GY", NA,
  "cc056915-475e-4179-b12e-849acebc6ed9", "country", "CO", NA,
  "278c9199-be97-4fd0-9c6c-6c46c4e2369e", "country", "IE", NA,
  "089ede6e-6496-4638-915e-f28f016c2f89", "country", "RU", NA,
  "698df663-427c-491d-8d86-8d9a2c861d9f", "country", "KZ", NA,
  "aaa48ec4-fd8c-466c-ae23-6cf72184ddb0", "country", "ES", NA,
  "21cf83b3-fec6-4c42-95bc-b8555a991bc3", "country", "BR", NA,
  "1100c043-55c0-433d-b2f3-60747ab9de11", "country", "AT", NA,
  "b4f90048-9579-4d00-b786-3c7e01b02cc3", "region", NA, "Senegal and part of Guinea",
  "38de3b7a-5af3-4b6f-a1c5-4c0aa6abf010", "country", "NO", NA,
  "87a6a9bf-6188-4742-8049-84bc82a5785e", "country", "CO", NA,
  "e38bd73c-494e-4790-b3dc-8d837a10a160", "country", "DE", NA,
  "2c0abc5f-bffd-471b-a932-2288a87668bb", "country", "US", NA,
  "c791e14a-3e86-40e7-af95-c1663c922c59", "country", "DE", NA,
  "8e5cecac-8c30-4527-9894-49a23e7109d7", "region", NA, "Dongsha Atoll lagoon",
  "6c4baae4-b74c-4f1c-bd19-5dbf14f57789", "country", "DE", NA,
  "d50024ac-5268-477e-8559-933779553b34", "resion", NA, "Eastern Mediterranean",
  "8cc9b37f-2fa2-4527-ab3f-ec220d9468f3", "country", "CA", NA,
  "dba21dbc-ea38-4bbf-b50f-ba3d256e1f73", "country", "BJ", NA,
  "6ac09c4d-bf7b-4e47-9c2d-f5abf6e89aa0", "country", "BJ", NA,
  "848271aa-6a4f-4bae-a055-7081f3e70c4b", "country", "BE", NA,
  "72aa797d-42a4-4176-9e19-5b3ddd551b79", "country", "BE", NA,
  "e082b10e-476f-43c1-aa61-f8d92f33029a", "country", "BE", NA,
  "1738f272-6b5d-4f43-9a92-453a8c5ea50a", "region", NA, "Northern Europe",
  "1f3505cd-5d98-4e23-bd3b-ffe59d05d7c2", "country", "BE", NA,
  "a51932dc-5d7c-484d-bd31-8acdcddd36cb", "country", "NO", NA,
  "be6a0901-0116-4629-9211-c89710b993bb", "country", "BJ", NA,
  "6e3e08f6-fde6-4946-ba09-257f9b2f1036", "country", "BJ", NA,
  "d006d8bb-cf1e-46ff-a054-c6768e23d86d", "country", "UA", NA,
  "a6c6cead-b5ce-4a4e-8cf5-1542ba708dec", "country", "NO", NA,
  "9a4fa5fd-698b-4484-81ce-a4048f5c2d86", "region", NA, "Mitteleuropa",
  "da38f103-4410-43d1-b716-ea6b1b92bbac", "region", NA, "Afrotropical",
  "8027d8d5-c8bc-4d54-bee9-f854f141b442", "region", NA, "Nordic",
  "44f022d6-9c64-413a-a0e1-b0c0d13a6840", "country", "CO", NA,
  "61b67ae8-c623-42a9-9172-3283f2f1473b", "country", "PT", NA,
  "42f4a656-a6be-43da-a61e-642d1dec44f4", "country", "CO", NA,
  "1a15d46d-db0b-48bf-8e49-6ef1cfd08128", "country", "CO", NA,
  "7fd96d7c-1bf1-4c05-9471-19d33349eaa5", "country", "CO", NA,
  "e45d425d-2404-40a5-b784-3634adc76d08", "country", "CO", NA,
  "f7320eb9-aa69-46c1-90e7-627914bca20b", "country", "TG", NA,
  "74875b49-d4c7-4bac-80f2-8cc7da30b5c1", "country", "TG", NA,
  "233ba52e-46d8-423c-bee3-e716dd8f3abf", "country", "SN", NA,
  "e2178209-373b-4370-9ef4-f0b4bc964b40", "country", "CA", NA,
  "12bc286b-9102-4663-86e6-2bc07e96a9c0", "country", "CO", NA,
  "dee20545-3861-4aef-9bf1-ec62fee95599", "country", "CO", NA,
  "0776184c-45ea-49c4-a4f0-3b812a20aba9", "country", "TG", NA,
  "3d4ac01a-51a9-4ec9-8599-230a27e58758", "region", NA, "probably Benin",
  "b3518e36-5743-4a17-87d8-d5983f0e759c", "country", "CA", NA,
  "c5190981-bd36-4790-8596-54225a4fe7b3", "country", "TG", NA,
  "395c4e1f-95a6-451a-9b81-c73b811819ce", "country", "CO", NA,
  "a4a5b61e-baaf-43fd-800d-12203ad5ee6f", "country", "PY", NA,
  "b81670bc-a67c-480c-b91b-ed0ebdfc569b", "region", NA, "New Caledonia",
  "b043c480-dd36-4f4f-aa82-e188753ff09d", "country", "BE", NA,
  "2fb88139-5418-4ce8-9009-e0cd98631bd8", "country", "CO", NA,
  "c2139479-1a23-4050-94fe-ee2424a88fdf", "country", "CO", NA,
  "082298a5-6b6a-4a4e-abef-4e4c64b2c07a", "country", "CO", NA,
  "54fc5129-86bf-4666-871b-18f5c0f7fc2a", "country", "LR", NA,
  "c91efd92-49fc-49fa-83c9-da0611f73022", "country", "PT", NA,
  "649fb99c-5bb1-4a3b-83df-7f9b3fe4dca6", "country", "MU", NA,
  "45760a8e-818e-4fe9-9537-c069500b09ea", "country", "ES", NA,
  "de5e3fb2-3922-40ba-9773-e45a6850ffeb", "region", NA, "probably Benin",
  "888b4cc1-7342-4d6c-ba5c-c1b29c8d27fd", "region", NA, "iberia",
  "29886bf9-62d2-4208-87f6-109dd1972607", "country", "CO", NA,
  "c0d879f3-66e0-4bf0-8288-107d74cbfca2", "country", "SN", NA,
  "7b1ab46e-b03e-47db-b0fb-2ae856a0ce2b", "country", "EC", NA,
  "4a7894dc-d85b-44cc-b666-ab21e2d1a38a", "country", "TG", NA,
  "7b944cc6-1ffa-49de-aab8-2a5ab543422b", "country", "CA", NA,
  "04b52c73-3edc-4b37-b1e0-5a73fd5fd67a", "country", "CO", NA,
  "fe51a93b-a7f8-48ec-99c8-7c347716e8d3", "region", NA, "Iberia",
  "f8c3eca8-349d-4e4c-9374-af8177cc1901", "country", "ES", NA,
  "99aaf1d4-6099-45a7-975e-324adc74036f", "country", "TW", NA,
  "f59a8890-1f9d-4328-9258-d30070361ae0", "region", NA, "global",
  "8b6d30f6-c7c4-4192-badb-3a51fee42dec", "country", "CO", NA,
  "432f2bd0-0fee-40ff-b0ca-25ca63b75a66", "country", "TG", NA,
  "04fcb5be-39ac-4942-b464-c9239f2351df", "country", "CO", NA,
  "e8b9ed9b-f715-4eac-ae24-772fbf40d7ae", "country", "CO", NA,
  "dd6c4260-c134-4548-af43-dbd00fb24b1f", "country", "CO", NA,
  "8f593ad5-6bb8-48ad-8ad3-d1398318b491", "country", "KE", NA,
  "2f2199f7-6706-4b53-a4ca-0f022337f38c", "country", "CO", NA,
  "f8657d9e-ff0b-4b3a-890d-707978f5ef83", "country", "CO", NA,
  "4b32768e-33d0-400d-a2f3-d7011e5507fa", "region", NA, "Iberia",
  "81a257d9-9522-410e-b921-8c9283dbb939", "country", "BJ", NA,
  "36ad3207-1190-47ad-868e-b09d6c0aeec2", "region", NA, "Europe",
  "a5224e5b-6379-4d33-a29d-14b56015893d", "country", "CO", NA,
  "dd76b7a9-4a25-4d4c-bb37-ef23369896c8", "country", "TG", NA,
  "5e94ab8c-e9dd-4f52-ae7c-f9cb19c36660", "country", "CO", NA,
  "a603f9be-24f2-40f6-a3b3-88e70c103e74", "country", "CO", NA,
  "a81db65d-684a-4684-8c98-8ac4e33900b9", "country", "CO", NA,
  "d8e8b1bf-0b56-4cc0-bf75-c9283fad4aa2", "country", "CO", NA,
  "d7193913-6b9e-4e8e-b81a-6f150442842e", "region", NA, "Canarias",
  "a52d7d3c-e4d0-4c27-865b-7135fe1e7b28", "country", "KE", NA,
  "bd25fbf7-278f-41d6-bc17-9f08f2632f70", "region", NA, "Afrotropical",
  "d4f59460-4248-4d5b-91e9-641d803f5890", "country", "GY", NA,
  "ca4acdcc-4b59-435e-acf3-3ff3580e823c", "country", "CO", NA,
  "9b964733-38ec-4475-b1a3-11da8b10c713", "country", "CO", NA,
  "d922f0cd-fae6-4600-8daa-2b41bb4f76ad", "country", "CO", NA,
  "e2bcea8c-dfea-475e-a4ae-af282b4ea1c5", "region", NA, "Europe",
  "bab767e9-5f20-41ac-9fef-a5f45521186a", "country", "CO", NA,
  "a21eb3c4-c89a-4099-bb61-7b5501c2c044", "country", "CO", NA,
  "be44f76b-73cf-4e5f-aa3a-bd8ab0071087", "country", "CO", NA,
  "06e2dcba-9799-4a04-a234-fdd684b4700c", "country", "ZW", NA,
  "45345d1e-7284-4086-bb8a-0c973f7871bc", "country", "CO", NA,
  "dbdb4ba6-ffef-4078-8d86-3c4f0906a65b", "country", "CO", NA,
  "884378d6-d591-4760-bb70-7b4851784d96", "country", "ZW", NA,
  "31fde125-d1cc-4614-ae99-58a6b130b52e", "country", "CO", NA,
  "d782946f-e6e2-4c16-aac4-0d26688bf77f", "country", "CO", NA,
  "0a423169-63f8-439c-b833-ab01b379bd50", "region", NA, "Orinoco Basin",
  "6f021b37-1b15-458d-b6c0-01d2f01afd1f", "country", "TG", NA,
  "b08f433a-c35b-4e6d-8400-df5b84c3d379", "country", "CO", NA,
  "a3846a81-c16c-40ad-a223-7dbb1caadfe2", "country", "RU", NA,
  "07692b6f-8209-41c2-803b-31616faec849", "country", "RU", NA,
  "cc4f37d7-04d1-4ae3-88bd-d87520730f76", "country", "CO", NA,
  "b2b23059-05a5-4ab5-a550-203e69a70afe", "country", "CO", NA,
  "2d430b32-6d51-4d3a-abdc-4cb0704479e7", "country", "CO", NA,
  "12619532-b135-4541-bb16-352232bc6c10", "country", "CO", NA,
  "0596023f-dc69-45d4-b300-b7c08f1ebf93", "region", NA, "Canarias",
  "e17feadc-fd09-4736-b827-4b677318f167", "region", NA, "Canarias",
  "c22427f2-d592-4e4b-aba8-922b1d45d599", "country", "KE", NA,
  "a7dcce0e-3aa1-487b-aac5-3e5142711306", "country", "CO", NA,
  "1e0b1c77-17a3-458f-9fe7-4de91b6e564b", "country", "PH", NA,
  "a9df0f79-9e6d-4062-a303-d764d7424ad0", "country", NA, "Canarias",
  "ab208927-fbf3-4994-b2fe-14cb6c31aed5", "country", "ES", NA,
  "47083374-d545-4f4e-8f4f-1fd881d13fbd", "country", "CO", NA,
  "a2c09692-fe1d-405e-a7b4-62e6a2240e86", "country", "KE", NA,
  "33c73af3-af77-4b76-9525-4c1207c266ab", "region", NA, "Canarias",
  "272a784c-30ee-4116-97b3-b58d07c0fd8b", "country", "CO", NA,
  "bb471298-dffb-44ff-9728-0cbb5a3897e3", "country", "CA", NA,
  "11f5ca15-8de9-4499-9fd2-368b62ea45cb", "country", "CO", NA,
  "bf740679-40c0-4e06-a209-bda733228465", "country", "CL", NA,
  "fc5d3109-95a2-47ae-8bfd-1667fc2b12cc", "country", "PT", NA,
  "48827caf-a89d-49d6-918c-a70487b5c3b8", "country", "SN", NA,
  "90680918-41b6-459e-bfe7-2891005bb469", "country", "CO", NA,
  "6fd6f172-5877-4ebb-857f-2a7da6201d3e", "country", "MU", NA,
  "5e0073bc-de2a-4bb7-8e40-a27d93909715", "country", "CO", NA,
  "a4e57579-9638-46de-b0d8-64c4b2ffc488", "country", "CO", NA,
  "2f5a2012-7ac7-4ebf-9b72-409b29a3959f", "country", "RU", NA,
  "86e2cb47-46df-4e40-ad76-cdc65a663bcf", "country", "TW", NA,
  "4c881adf-82dc-4f31-aea9-20887ce7d7c9", "country", "CO", NA,
  "50dd450d-f7aa-42b8-b55f-9c9a4fc0c806", "country", "ZW", NA,
  "bda0bc4d-4818-4c32-81f2-08c227ce83cb", "country", "TG", NA,
  "7d4d781f-2ab5-4814-bd9c-152024ee31d6", "country", "CO", NA,
  "7b3f4866-9369-45a9-b2a8-bcd0b144d500", "country", "CO", NA,
  "0497a051-ccd6-4699-9bce-9170562cba65", "country", "MG", NA,
  "44efdb21-2b49-4e54-984f-924cc079ac4b", "country", "CR", NA,
  "38f91564-30ff-47b0-aa6b-cf3b59f0fca7", "region", NA, "artic ocean",
  "6bc3be9d-4648-47f6-b5c4-875c4adee47d", "region", NA, "iberia",
  "d3f81206-8e80-44fd-83ea-729c16065195", "country", "JM", NA,
  "31770fdd-e4c5-4971-a2a8-31eadf292c8e", "region", NA, "Rodrigues",
  "4e132917-74be-40c5-bf29-2b193e994805", "country", "MY", NA,
  "1c811268-5a5c-45df-a538-9f09ca5e3834", "country", "ZW", NA,
  "5a39c87c-9d97-4282-b3a9-e2c292b4729d", "region", NA, "Seaflower Biosphere Reserve",
  "ece2bfaa-8941-4414-8fa4-c7febc9954b5", "country", "MR", NA,
  "dbdcae7b-6fd2-4fb6-9787-e152b9e6d99e", "country", "MR", NA,
  "7f30b6c4-bdd7-4dc0-b32e-699a8d96dc47", "country", "PH", NA,
  "20ec7a58-e20f-451b-9a00-4edc25d588f3", "country", "BD", NA,
  "0a20bf65-4c0f-42ce-b6e4-2218c0ea5833", "region", NA, "probably Benin",
  "29d2d5a6-db22-4abd-b784-9ab2f9757c3c", "country", "YE", NA,
  "f65b57b0-ad64-4e60-a1f5-97c5c483664e", "region", NA, "Southern Africa",
  "086d0402-a5e1-42ae-b67f-ac6244178fa2", "country", "KE", NA,
  "bbab5788-88ba-4eb7-b7f9-3e103303d5bb", "country", "CL", NA,
  "ae521be6-8809-4e17-8614-212f076b7924", "region", NA, "Easter Island",
  "e56afa60-ad5c-47a2-bb91-e0e83c45d60b", "country", "PH", NA,
  "e4746398-f7c4-47a1-a474-ae80a4f18e92", "country", "BE", NA,
  "2ef63b81-c256-4bb7-a5f3-d560f0451e93", "country", "GH", NA,
  "cc7a62c8-cd0e-4e89-a1ee-71b52e72b061", "region", NA, "Africa",
  "81a51504-4aa6-41b7-8686-ae34fae95276", "country", "GH", NA,
  "a4cee1cc-59ef-4f18-8322-7108c83bd065", "country", "CO", NA,
  "4df785bf-4428-4364-a7ab-b417543d089a", "country", "ZW", NA,
  "ed84efa3-71f0-42fb-8c8a-f3864d8be04e", "country", "MR", NA,
  "2daac035-1224-451e-a8ff-083dac9a6f31", "country", "KE", NA,
  "289244ee-e1c1-49aa-b2d7-d379391ce265", "country", "BE", NA,
  "6c0abcec-464e-4ece-bb4e-8ecd6840e95b", "region", NA, "easter island",
  "89e22f48-ea07-48d3-9c41-bad6a6d4c934", "country", "RU", NA,
  "f2faaa4c-74e9-457a-8265-06ef5cc73626", "country", "US", NA,
  "d2c8bf26-2179-447d-b1a2-3df7f9253d87", "country", "RU", NA,
  "c9099bac-616c-44bf-8319-0b9b1f589121", "country", "FJ", NA,
  "31f8727c-debb-4c38-bb89-0eb2594537a9", "country", "RU", NA,
  "fc510ff4-55da-4d84-832a-9af699836979", "country", "CL", NA,
  "c05b97bc-e172-40e9-9d42-9df0f93a6e65", "region", NA, "Oceans",
  "71a7456d-0cfa-4a39-8b34-1432dde24b02", "counrty", "BJ", NA,
  "8d431c96-9e2f-4249-8b0a-d875e3273908", "region", NA, "global",
  "22e8893c-a8e2-4898-8684-9ae74cff4126", "counrty", "CM", NA,
  "97ff233a-606c-4fc5-9eaa-bf4f3e9f0299", "country", "CL", NA,
  "98940a79-2bf1-46e6-afd6-ba2e85a26f9f", "country", "BE", NA,
  "46d612a6-90b3-4f50-8b9a-a290d1780b76", "country", "TL", NA,
  "8999d827-8711-42aa-99d0-b88f59a7e28a", "region", NA, "Africa",
  "21595325-799d-4aa5-b47b-48ad0f105a3f", "country", "CO", NA,
  "9d926eab-7be1-431f-9755-025ad4a90077", "country", "CO", NA,
  "51110943-8c1a-4a24-8178-bcd4c3e026d1", "country", "CL", NA,
  "1580f177-248f-421a-8a3d-bf5ab2065a6b", "country", "CM", NA,
  "c301eb23-63d4-48dd-addf-b2a9c9c260fd", "region", NA, "global",
  "021cf0d3-aae6-417d-8682-ae535d17de89", "country", "BR", NA,
  "8bb17a01-6ca6-4225-a42c-be3cb22e3db0", "country", "PG", NA,
  "dc0f5f98-630c-42e1-a129-286b744d6b3e", "plazi", NA, NA,
  "c7258597-fa96-4b98-a6f8-aecc1f8779d5", "region", NA, "South american marine waters",
  "34e5d258-a1bc-49c6-8c25-56609a300015", "region", NA, "American Samoa",
  "607932e4-c3eb-42a7-ae75-a68dbcd4064a", "region", NA, "probably mexico",
  "4a4060a7-8f5b-4754-8579-180b5d1b697c", "country", "BR", NA,
  "91bc4859-05a8-43d1-8bf2-cf2bfde4b22d", "country", "TR", NA,
  "b351a324-77c4-41c9-a909-f30f77268bc4", "global", NA, "global",
  "c96f6c0d-c1cb-48d8-81bd-dd18a4d4fa73", "country", "GB", NA,
  "cdd9d4c9-6eb1-4616-8693-727e4fb1f407", "country", "US", NA,
  "56eebc91-bbc7-4564-a0f7-901e5e31480e", "country", "GE", NA,
  "b95534da-3507-4e66-afe7-94c655eaceb3", "country", "TG", NA,
  )

return(curation)
}





