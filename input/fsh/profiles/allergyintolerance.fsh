//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_AllergyIntolerance
Parent:     AllergyIntolerance
Id:         cz-allergyIntolerance
Title:      "AllergyIntolerance (CZ)"
Description: "Czech national profile for an Allergy Intolerance"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Allergy Intolerance"
* . ^definition = "The profile presents the requirements for AllergyIntolerance within the Czech national interoperability project. It represents a record of a clinical assessment of an allergy or intolerance; a propensity, or a potential risk to an individual, to have an adverse reaction on future exposure to the specified substance, or class of substance."

* identifier 1..
* patient MS
* patient only Reference(CZ_PatientCore)
* clinicalStatus 1..
* clinicalStatus from $hl7AllergyintoleranceClinical
* type MS
* type from $hl7AllergyintoleranceType
* category MS
* category from $hl7AllergyintoleranceCategory
* code MS
* note MS

* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerCore or CZ_PractitionerRoleCore)