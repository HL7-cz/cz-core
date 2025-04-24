Instance: Noknow-AllergyIntolerance
InstanceOf: AllergyIntolerance
Title: "AllergyIntolerance - No Known Allergies"
Description: "AllergyIntolerance - No known allergies"
Usage: #example
* id = "allergy-1"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#716186003 "No known allergy (situation)"
* patient = Reference(Patient/Mracena) "Mračena"
* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* onsetDateTime.extension.valueCode = #unknown