Instance: Noknow-AllergyIntolerance
InstanceOf: CZ_AllergyIntolerance
Title: "AllergyIntolerance - No Known Allergies"
Description: "AllergyIntolerance - No known allergies"
Usage: #example
* id = "allergy-1"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-1"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $absent-unknown-uv-ips#no-known-allergies "žádné známé alergie"
* patient = Reference(Patient/Mracena) "Mračena"
* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* onsetDateTime.extension.valueCode = #unknown