//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_Medication
Parent:     Medication
Id:         cz-Medication
Title:      "Medication (CZ)"
Description: "Czech national profile for a medication."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "A medication for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* . ^short = "Czech Medication"
* . ^definition = "This profile is derived from the Medication in FHIR, which is a record of the medication."

* identifier 1..
* code from CZ_DLPLecivePripravkyVs (required)
* code ^binding.extension[0].extension[0].url = "key"
* code ^binding.extension[=].extension[=].valueId = cz-dlpatc
* code ^binding.extension[=].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://fhir.hl7cr.eu/core/ValueSet/cz-dlpatc-vs"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a ATC value set."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* form from CZ_DLPFormyVs (preferred)
* ingredient ^definition = "Identifies a particular constituent in the product."
* ingredient
  * itemReference only Reference(CZ_Medication)
  * itemCodeableConcept from CZ_DLPLecivelatkyVs (preferred)
* manufacturer only Reference(CZ_OrganizationCore)