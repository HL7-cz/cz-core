//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_AllergyIntolerance
Parent:     AllergyIntolerance  // would need to update to AllergyIntoleranceEuCore when it is ready
Id:         cz-allergyIntolerance
Title:      "Allergy Intolerance (CZ)"
Description: "Czech national profile for an Allergy Intolerance"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Allergy Intolerance"
* . ^definition = "The profile presents the requirements for AllergyIntolerance within the Czech national interoperability project. It represents a record of a clinical assessment of an allergy or intolerance; a propensity, or a potential risk to an individual, to have an adverse reaction on future exposure to the specified substance, or class of substance."

* extension contains $allergyintolerance-abatement named abatement 0..1
* extension[abatement].valueDateTime ^short = "End date"
* identifier 1..
* patient
* patient only Reference(CZ_PatientCore)
* clinicalStatus 1..
* clinicalStatus from $hl7AllergyintoleranceClinical
//* type MS
* type from $hl7AllergyintoleranceType
//* category MS
* category from $hl7AllergyintoleranceCategory

//* code from $hl7AllergyintoleranceCode (preferred)
* code 1..1
* code from $AllergenWithExceptions (preferred)
/* * code ^binding.extension[0].extension[0].url = "key"
* code ^binding.extension[=].extension[=].valueId = dlp-lecivepripravky-vs
* code ^binding.extension[=].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = $dlp-lecive-pripravky-vs
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a DLP lecive pripravky value set."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "key"
* code ^binding.extension[=].extension[=].valueId = cz-dlpatc
* code ^binding.extension[=].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://sukl.cz/terminology/ValueSet/cz-dlpatc"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a ATC value set."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
 */

// Need review of the following elements to determine if they are needed in the profile or if they can be left as is from the base resource:
// ------------------------------------------------------------
//* reaction.substance from $eHDSIAllergenNoDrug (example)
* reaction.manifestation from eHDSIReactionAllergy (preferred)
/*   * ^binding.extension[+].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
//   * ^binding.extension[+].extension[+].url = "key"
//   * ^binding.extension[=].extension[=].valueId = "b32b88b4-89d9-4744-b356-dff033c16f82"
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = $eHDSIReactionAllergy
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Type of reaction (MyHealth@EU)"
  * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Type of allergy or intolerance reaction expected to be used in MyHealth@EU"
 */
* reaction.severity ^short = "Reaction severity"
* reaction.onset ^short = "Reaction onset"
// ------------------------------------------------------------

//* note MS
* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerCore or CZ_PractitionerRoleCore)