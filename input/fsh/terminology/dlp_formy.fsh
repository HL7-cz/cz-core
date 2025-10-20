CodeSystem:     CZ_DLPFormyCs
Id:	        cz-dlpformy-cs
Title:	       "Codesystem DLP formy"
Description:   "Drug forms code system managed by Státní ústav kontroly léčiv (SÚKL)."

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
//* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #fragment
* ^url = "https://hl7.cz/fhir/core/CodeSystem/cz-dlpformy-cs"
* insert SetFmmandStatusRule(2, trial-use)

* #TBL_FLM "Potahovaná tableta"
* #INJSOL "Injekční roztok"

ValueSet:     CZ_DLPFormyVs
Id:	        cz-dlpformy-vs
Title:	       "Value set of DLP formy"
Description:   "Value set of DLP formy. Identification form."

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
* ^url = "https://hl7.cz/fhir/core/ValueSet/cz-dlpformy-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system CZ_DLPFormyCs