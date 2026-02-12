Instance: AllergyToCatDander
InstanceOf: CZ_AllergyIntolerance
Usage: #example
Title: "Allergy to cat dander"
Description: "Example for AllergyIntolerance"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-2"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #biologic
* criticality = #low
* code = $sctCZ#260152009 "kočičí lupy a srst"
* patient = Reference(Mracena) "Mračena"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "Animal shelter"
* reaction.substance = $sctCZ#260152009 "Cat dander (substance)"
* reaction.manifestation[0] = $sctCZ#271807003 "Eruption of skin (disorder)"
* reaction.severity = #mild