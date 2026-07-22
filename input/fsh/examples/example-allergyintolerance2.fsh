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
* code = $sct#260152009 "kočičí kožní šupiny"
* patient = Reference(Mracena) "Mračena"
// * reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
// * reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
// * reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
// * reaction.extension[=].valueString = "Animal shelter"
* reaction.substance = $sct#260152009 "kočičí kožní šupiny"
* reaction.manifestation[0] = $sct#271807003 "kožní výsev"
* reaction.severity = #mild