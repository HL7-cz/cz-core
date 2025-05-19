//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_MedicationStatement
Parent:     MedicationStatement
Id:         cz-MedicationStatement
Title:      "Medication Statement"
Description: "Czech national profile for a medication statement."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "A medication declaration may indicate that a patient may be taking medications now, has taken medications in the past, or will take medications in the future. The source of this information may be the patient, a significant other (such as a family member or spouse), or the physician. A common scenario in which this information is captured is during the history taking process during a patient visit or stay. Medication information may come from sources such as the patient’s memory, the prescription bottle, or a medication list maintained by the patient, physician, or other party."
* . ^short = "Czech Medication Statement"
* . ^definition = "This profile is derived from the Medication Statement in FHIR, which is a record of the medication the patient is taking."

* identifier 1..
* status MS
* status from $hl7MedicationStatementStatus
* medication[x]
* medication[x] only Reference(CZ_Medication) or CodeableConcept
* medicationCodeableConcept from DLPLecivePripravkyCzVs (required)
* dosage 
* dosage only Dosage