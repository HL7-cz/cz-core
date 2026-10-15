//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_MedicationMpd
Parent:     CZ_MedicationCore
Id:         medication-cz-mpd
Title:      "Medication (CZ MPD)"
Description: "Czech national profile for a medication used in ePrescription and eDispensation (MPD)."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "A medication for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* . ^short = "Czech Medication"
* . ^definition = "This profile is equal to Medication CZ Core profile, which is a record of the medication."

* insert SetFmmandStatusRule (2, trial-use)
* insert ImposeProfile($medication-eu-mpd, 0)