CodeSystem:     CZ_DLPLecivelatkyCs
Id:	        cz-dlplecivelatky-cs
Title:	       "Codesystem of DLP Lecive latky"
Description:   "Codesystem of DLP Lecive latky. Identification ingredient."

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:1.2.203.24341.11.2.7.5"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
//* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #fragment
* ^url = "https://hl7.cz/fhir/core/CodeSystem/cz-dlplecivelatky-cs"
* insert SetFmmandStatusRule(2, trial-use)

* #10647 "SIMVASTATIN"
* #828 "LEVOTHYROXINUM NATRICUM"
* #1593 "IBUPROFENUM"
* #1064 "PARACETAMOLUM"
* #23463 "SARS-COV-2 (OMICRON JN.1) SPIKE PROTEIN"

ValueSet:     CZ_DLPLecivelatkyVs
Id:	        cz-dlplecivelatky-vs
Title:	       "Value set of DLP Lecive latky"
Description:   "Value set of DLP Lecive latky (Substances)"

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:1.2.203.24341.11.1.11"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
* ^url = "https://hl7.cz/fhir/core/ValueSet/cz-dlplecivelatky-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system CZ_DLPLecivelatkyCs