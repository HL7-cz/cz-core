CodeSystem:     CZ_DLPLecivePripravkyCs
Id:	            dlp-lecive-pripravky-cs
Title:	       "Codesystem of DLP Lecive pripravky"
Description:   "Codesystem of DLP Lecive pripravky. Identification medication."

* ^language = #cs-CZ
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
* ^url = $dlp-lecive-pripravky-cs  //"https://fhir.hl7cr.eu/core/CodeSystem/cz-dlplecivepripravky-cs"
* insert SetFmmandStatusRule(2, trial-use)

* #0013831 "SIMVASTATIN RATIOPHARM 40MG TBL FLM 20"
* #0226200 "Fludeoxythymidin"
* #0271911 "COMIRNATY OMICRON XBB.1.5"
* #0254294 "IBALGIN"
* #0243131 "EUTHYROX"
* #0253304 "PARACETAMOL ZENTIVA K.S."

ValueSet:     CZ_DLPLecivePripravkyVs
Id:	          dlplecive-pripravky-vs
Title:	       "Value set of DLP Lecive pripravky"
Description:   "Value set of DLP Lecive pripravky. Identification medication."

* ^language = #cs-CZ
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "UZIS"
* ^url = $dlp-lecive-pripravky-vs
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system CZ_DLPLecivePripravkyCs
