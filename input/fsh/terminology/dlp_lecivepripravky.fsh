CodeSystem:     CZ_DLPLecivePripravkyCs
Id:	        cz-dlplecivepripravky-cs
Title:	       "Codesystem of DLP Lecive pripravky"
Description:   "Codesystem of DLP Lecive pripravky. Identification medication."

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
* ^url = "https://hl7.cz/fhir/core/CodeSystem/cz-dlplecivepripravky-cs"
* insert SetFmmandStatusRule(2, trial-use)

* #0013831 "SIMVASTATIN RATIOPHARM 40MG TBL FLM 20"
* #0226200 "Fludeoxythymidin"

ValueSet:     CZ_DLPLecivePripravkyVs
Id:	        cz-dlplecivepripravky-vs
Title:	       "Value set of DLP Lecive pripravky"
Description:   "Value set of DLP Lecive pripravky. Identification medication."

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
* ^url = "https://hl7.cz/fhir/core/ValueSet/cz-dlplecivepripravky-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system CZ_DLPLecivePripravkyCs
