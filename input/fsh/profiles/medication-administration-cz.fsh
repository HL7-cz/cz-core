//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_MedicationAdministrationCore
Parent:     MedicationAdministration
Id:         MedicationAdministration-cz-core
Title:      "Medication Administration (CZ core)"
Description: "Czech national profile for a medication administration."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "MedicationAdministration is intended for tracking the administration of medications."
* . ^short = "Czech Medication Administration"
* . ^definition = "This profile is derived from the Medication Administration in FHIR, which is a record for tracking the administration of medications."

* identifier 1..
* partOf only Reference(CZ_MedicationAdministrationCore or Procedure)
* status
* status from $hl7MedicationAdminStatus
* medication[x]
* medicationReference only Reference(CZ_MedicationCore)
* medicationCodeableConcept from $dlp-lecive-pripravky-vs (preferred)

* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group)
* performer.actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver)
* reasonCode from $condition-cz (preferred)
* reasonReference only Reference(CZ_ConditionCore or CZ_MedicalTestResultCore or CZ_DiagnosticReportCore)
* request only Reference(CZ_MedicationRequestCore)
// * device only Reference(CZ_DeviceObserver or CZ_MedicalDevice)
* device only Reference(CZ_MedicalDevice)

* dosage
  * route from $eHDSIRouteOfAdministration (preferred)
  * dose 0..1