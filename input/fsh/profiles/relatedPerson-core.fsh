//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_RelatedPersonCore
Parent:     CZ_RelatedPersonBase
Id:         cz-relatedPerson-core
Title:      "Related Person (CZ core)"
Description: "Czech national profile for a related person.This profile sets minimum expectations for the Related Person resource common to most of the use cases."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = "The source is primarily used for attribution of information, as individuals are often the source of information about the patient."
* . ^short = "Czech Related person (core profile)"
* . ^definition = "Czech national core profile defines how to represent Related Person in HL7 FHIR."
* ^publisher = "HL7 CZ"
//* ^status = #active
* insert SetFmmandStatusRule ( 1, draft )
* insert ImposeProfile($RelatedPerson, 0)

* name 0..1 //MS  // name element must be provided
* name obeys cz-relPer-1
* name.given ^min = 1

* patient only Reference(CZ_PatientCore)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Invariant: cz-relPer-1
Description: "RelatedPerson.name.given, RelatedPerson.name.family, RelatedPerson.name.text or data-absent-reason MUST be filled"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
