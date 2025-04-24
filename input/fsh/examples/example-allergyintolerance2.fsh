Instance: AllergyToCatDander
InstanceOf: AllergyIntolerance
Usage: #example
Title: "Allergy to cat dander"
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #biologic
* criticality = #low
* code = $sct#232346004 "Allergy to cat dander (finding)"
* patient = Reference(Patient/Mracena) "Mračena"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "Animal shelter"
* reaction.substance = $sct#260152009 "Cat dander (substance)"
* reaction.manifestation[0] = $sct#271807003 "Eruption of skin (disorder)"
* reaction.severity = #mild