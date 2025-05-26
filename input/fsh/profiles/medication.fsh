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
* code from DLPLecivePripravkyCzVs (required)
* form from DLPFormyCzVs (preferred)
* ingredient ^definition = "Identifies a particular constituent in the product."
* ingredient.item[x] 
* ingredient.itemCodeableConcept from DLPLecivelatkyCzVs (required)
* ingredient.itemReference only Reference(Substance or CZ_Medication)

* manufacturer only Reference(CZ_OrganizationCore)