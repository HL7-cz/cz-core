CodeSystem:      NCLPMatCzCs
Id:	       nclpmat-cz-cs
Title:	       "NCLP MAT for specimen material"
Description:   "NCLP MAT for specimen material"

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "MZČR"
* ^caseSensitive = true
* ^content = #fragment
* ^url = "https://hl7.cz/fhir/core/CodeSystem/nclpmat-cz-cs"
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

ValueSet:     NCLPMatCzVs
Id:	        nclpmat-cz-vs
Title:	       "Value set of NCLP MAT"
Description:   "Value set of NCLP MAT"

* ^language = #cs
* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.2.10.2.1"
* ^version = "1.0"
* ^status = #active
* ^date = "2025-01-17"
* ^experimental = false
* ^publisher = "MZČR"
* ^url = "https://hl7.cz/fhir/core/ValueSet/dlpformy-cz-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system NCLPMatCzCs