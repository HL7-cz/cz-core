//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_MedicationCore
Parent:     MedicationEuCore
Id:         medication-cz-core
Title:      "Medication (CZ core)"
Description: "Czech national profile for a medication."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "A medication for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* . ^short = "Czech Medication"
* . ^definition = "This profile is derived from the Medication EU core profile, which is a record of the medication."

* insert SetFmmandStatusRule (2, trial-use)
//* identifier 1..
* code from $dlp-lecive-pripravky-vs (required)
// * code ^binding.extension[0].extension[0].url = "key"
// * code ^binding.extension[=].extension[=].valueId = dlp-atc
// * code ^binding.extension[=].extension[+].url = "purpose"
// * code ^binding.extension[=].extension[=].valueCode = #candidate
// * code ^binding.extension[=].extension[+].url = "valueSet"
// * code ^binding.extension[=].extension[=].valueCanonical = "https://sukl.cz/terminology/ValueSet/dlp-atc"
// * code ^binding.extension[=].extension[+].url = "documentation"
// * code ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a ATC value set."
// * code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* extension[classification].valueCodeableConcept from $dlp-atc-vs (preferred)
// * form from $dlp-formy-vs (preferred)
* form from $eHDSIDoseForms (preferred)

* ingredient ^definition = "Identifies a particular constituent in the product."
* ingredient
  * itemReference only Reference(CZ_MedicationCore)
  * itemCodeableConcept from $dlp-lecive-latky-vs (preferred)
* manufacturer only Reference(CZ_OrganizationCore)