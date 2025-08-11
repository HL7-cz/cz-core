CodeSystem:     CZ_DLPATCCs
Id:	        cz-dlpatc-cs
Title:	       "Codesystem of DLP ATC"
Description:   "Codesystem of DLP ATC. Identification form."

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #fragment
* ^url = "https://hl7.cz/fhir/core/CodeSystem/cz-dlpatc-cs"
* insert SetFmmandStatusRule(2, trial-use)

* #J01CA "PENICILINY SE ŠIROKÝM SPEKTREM"
* #C10AA01 "SIMVASTATIN"
* #J07BN01 "COVID-19, RNA VAKCÍNA"
* #M01AE01 "IBUPROFEN"
* #N02BE01 "PARACETAMOL"
* #H03AA01 "LEVOTHYROXINE SODIUM"

ValueSet:     CZ_DLPATCVs
Id:	        cz-dlpatc-vs
Title:	       "Value set of DLP ATC"
Description:   "Value set of DLP ATC. Identification form."

* ^language = #cs-CZ
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^url = "https://hl7.cz/fhir/core/ValueSet/cz-dlpatc-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system CZ_DLPATCCs