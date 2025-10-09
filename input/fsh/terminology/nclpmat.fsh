CodeSystem:      CZ_NCLPMatCs
Id:	       cz-nclpmat-cs
Title:	       "NCLP MAT for specimen material"
Description:   "NCLP MAT for specimen material"

* ^language = #cs-CZ
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "MZČR"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^caseSensitive = true
* ^content = #fragment
* ^url = "https://fhir.hl7cr.eu/core/CodeSystem/cz-nclpmat-cs"
* insert SetFmmandStatusRule(2, trial-use)

* #ADRC "Kůra nadledvin"
* #AIR "Vzduch"
* #AIREXP "Vzduch(expir.)"
* #AIRINSP "Vzduch(inspir.)"
* #AIRRESPS "Vzduch(resp. systém)"
* #ALV "Alveol"
* #AMF "Amniová tekutina"
* #B "B"
* #B(A) "B(a)"
* #BAFTOX "Krev (za oxygenátorem)"
* #BASO "Basofily"
* #B(A;UMB) "B(a;pupečník)"
* #BBEFOX "Krev (před oxygenátorem)"
* #B(C) "B(kap.)"
* #B(C;EAL) "B(kap.;ušní lalůček)"
* #B(C;FNG) "B(kap.;prst)"
* #B(CIT) "B(CIT)"
* #BEARD "Vous"
* #BIOP "Tkáň(biopsie)"
* #BM "Kostní dřeň"

ValueSet:     CZ_NCLPMatVs
Id:	        cz-nclpmat-vs
Title:	       "Value set of NCLP MAT"
Description:   "Value set of NCLP MAT"

* ^language = #cs-CZ
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "MZČR"
* ^url = "https://fhir.hl7cr.eu/core/ValueSet/cz-nclpmat-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system CZ_NCLPMatCs