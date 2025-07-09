Instance: AllergyToPenicilin
InstanceOf: AllergyIntolerance
Usage: #example
Title: "Allergy to penicilin"
Description: "Example for AllergyIntolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #biologic
* criticality = #high
* code = CZ_DLPATCCs#J01CA "PENICILINY SE ŠIROKÝM SPEKTREM"
* patient = Reference(Patient/Mracena) "Mračena"
* reaction.extension[0].url = "http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty"
* reaction.extension[=].valueCodeableConcept = $allergyintolerance-certainty#confirmed "Confirmed"
* reaction.extension[+].url = "http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription"
* reaction.extension[=].valueString = "Oral route"
* reaction.substance = $sct#3145006 "Penicillic acid"
* reaction.manifestation[0] = $sct#267038008 "Edema (finding)"
* reaction.severity = #mild