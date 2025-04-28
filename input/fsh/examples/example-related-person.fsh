Instance: RelatedPerson01
InstanceOf: CZ_RelatedPersonCore
Title: "Related person Example"
Usage: #example
Description: "A person that is related to a patient, but who is not a direct target of care"

//* contained[+] = Mracena //(PatientExample)
* identifier[RC][+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[RC][=].value = "5151264525"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "5151264525"
* identifier[PAS][+].system = "http://hl7.org/fhir/sid/passport-CZE"
* identifier[PAS][=].value = "23476525"
* identifier[PAS][=].use = #official
* identifier[PAS][=].type = $v2-0203#PPN
* identifier[+].system = "http://hl7.org/fhir/sid/passport-SVK"
* identifier[=].value = "88476522"
* identifier[=].use = #official
* identifier[=].type = $v2-0203#PPN

* relationship.coding[+] = $v3-RoleCode#MTH "matka"
* relationship.coding[+] = $v2-0131#N "Příbuzný"

* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "PraMračena"
* telecom.system = #phone
* telecom.value = "+420 603 853 226"
* telecom.use = #home
* gender = #female
* birthDate = "1951-01-26"

* patient = Reference (Patient/Mracena) //(CZ_PatientCore/Mracena) //(PatientExample)

/*
Instance: PatientExample
InstanceOf: CZ_PatientCore
Title: "Patient example"
Description: "Patient, contact information and practitioner"
Usage: #example //#inline

* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"

* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* birthDate = "1971-11-26"
*/