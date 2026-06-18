//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_MedicationDispenseCore
Parent:   MedicationDispense
Id:       medicationDispense-cz-core
Title:    "MedicationDispense (CZ Core)"
Description: "This profile constrains the MedicationDispense resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (2, trial-use)
* insert ImposeProfile($medication-dispense-eu-mpd, 0)

* extension contains
    $medicationdispense-rendereddosageinstruction-r5 named renderedDosageInstruction 0..1 //and
    //$medicationDispense-recorded-r5 named recorded 0..1   // MPD has 1..1 cardinality
* extension[renderedDosageInstruction] ^short = "Full representation of the dosage instructions"
//* extension[recorded] ^short = "Date and time when the dispense was recorded/issued. This is not necessarily the same as when the medication was handed over to the patient."

* medication[x] only CodeableConcept or Reference(CZ_MedicationCore)
* subject only Reference( CZ_PatientCore or Group)
* performer.actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_PatientCore or Device or CZ_RelatedPersonCore)
* location only Reference(CZ_LocationCore)
* authorizingPrescription only Reference(CZ_MedicationRequestCore)
* destination only Reference(CZ_LocationCore)
* receiver only Reference(CZ_PatientCore or CZ_PractitionerCore)
* substitution.responsibleParty only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore)


