CodeSystem:     DLPFormyCzCs
Id:	        dlpformy-cz-cs
Title:	       "Codesystem of DLP formy"
Description:   "Codesystem of DLP formy. Identification form."

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
* ^caseSensitive = true
* ^content = #fragment
* ^url = "https://hl7.cz/fhir/core/CodeSystem/dlpformy-cz-cs"
* insert SetFmmandStatusRule(2, trial-use)

* #TBL_FLM "Potahovaná tableta"

ValueSet:     DLPFormyCzVs
Id:	        dlpformy-cz-vs
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
* ^url = "https://hl7.cz/fhir/core/ValueSet/dlpformy-cz-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system DLPFormyCzCs