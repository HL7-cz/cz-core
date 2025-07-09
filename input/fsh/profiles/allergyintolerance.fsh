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

* code from $hl7AllergyintoleranceCode (preferred)
* code ^binding.extension[0].extension[0].url = "key"
* code ^binding.extension[=].extension[=].valueId = cz-dlplecivepripravky
* code ^binding.extension[=].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hl7.cz/fhir/core/ValueSet/cz-dlplecivepripravky-vs"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a DLP lecive pripravky value set."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "key"
* code ^binding.extension[=].extension[=].valueId = cz-dlpatc
* code ^binding.extension[=].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hl7.cz/fhir/core/ValueSet/cz-dlpatc-vs"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a ATC value set."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* note MS

* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerCore or CZ_PractitionerRoleCore)