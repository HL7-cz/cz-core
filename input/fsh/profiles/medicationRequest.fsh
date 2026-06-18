//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_MedicationRequestCore
Parent:   MedicationRequestEuCore
Id:       medicationRequest-cz-core
Title:    "MedicationRequest (HDR CZ)"
Description: "This profile constrains the MedicationRequest resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (2, trial-use)

* medication[x] only CodeableConcept or Reference(CZ_MedicationCore)
* reasonCode from $condition-cz (preferred)
* reasonReference only Reference(CZ_ConditionCore or CZ_MedicalTestResultCore)
* dosageInstruction.route from $eHDSIRouteOfAdministration (preferred)

// MedicationRequest R4
// * medicationReference only Reference(CZ_MedicationCore)
// * reasonCode ^short = "Reason or indication for this prescription"
//* reasonReference ^short = "Condition or observation that supports this prescription"

// MedicationRequest R4 R5 common
// * identifier
//   * ^short = "Prescription/prescribed item ID"
//   * ^comment = "It is the prescription ID if the prescription includes only one prescribed item"
// * status ^short = "Current state of the order"
//* intent = $medicationrequest-intent#order
* subject only Reference( CZ_PatientCore or Group )
// * authoredOn 1..
// * requester 1..
* requester only Reference (CZ_PatientCore or CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_RelatedPersonCore)
// * groupIdentifier // should we ask to valorize in all the cases ?
//   * ^short = "Prescription this is part of"
//   * ^comment = "Not needed if a prescription includes only one prescribed item"
// * dosageInstruction ^short = "How the medication should be taken."
//   * timing ^short = "Administration schedule"
//     * repeat
//       * duration ^short = "Duration of the treatment"
//       * frequency ^short = "Frequency times per period"
//       * period ^short = "Duration of time over which repetitions are to occur"
//       * periodUnit  ^short = "Unit of the period (e.g. day)"
//     * code ^short = "A code for the timing schedule."
//   * route ^short = "Route of administration"
//   * text ^short = "Free text dosage instructions"
//   * doseAndRate.doseQuantity ^short = "Amount of medication per dose"
// * dispenseRequest 1..
//   * quantity 1..
// * substitution.allowedCodeableConcept 1..