Profile: CZ_AppointmentCore
Parent: Appointment
Id: appointment-cz-core
Title: "Appointment (CZ Core)"
Description: "Czech core profile for appointment. "

* insert SetFmmandStatusRule ( 2, trial-use )

// * identifier 0..1
* status from $hl7AppointmentStatus
// * cancellationReason 0..1
// * cancellationReason from $hl7CancellationReason (example)
// * serviceCategory 0..*
// * serviceCategory from $hl7ServiceCategory (example)
// * serviceType 0..*
// * specialty 0..*
// * appointmentType 0..1
// * reasonCode 0..*
* reasonReference only Reference(CZ_ConditionCore or CZ_MedicalTestResultCore or Procedure or ImmunizationRecommendation)
// * priority 0..1
// * description 1..1
// * created 0..1
// * minutesDuration 0..1
// * comment 0..1
// * patientInstruction 0..1
* participant.actor only Reference(CZ_PatientCore or CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_RelatedPersonCore or Device or HealthcareService or CZ_LocationCore)