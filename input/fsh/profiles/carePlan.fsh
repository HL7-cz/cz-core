Profile: CZ_CarePlanCore
Parent: CarePlan
Id: carePlan-cz-core
Title: "Care plan (CZ Core)"
Description: "Care plan core profile for the scope of the Czech national interoperability project."

* identifier
* title
* description

* basedOn only Reference(CZ_CarePlanCore)
* replaces only Reference(CZ_CarePlanCore)
* partOf only Reference(CZ_CarePlanCore)
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group)
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* contributor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* addresses only Reference(CZ_ConditionCore)
* activity.reference only Reference(CZ_AppointmentCore or CommunicationRequest or DeviceRequest or MedicationRequest or NutritionOrder or Task or ServiceRequest or VisionPrescription or RequestGroup)
* activity.detail.reasonReference only Reference(CZ_ConditionCore or CZ_MedicalTestResultCore or CZ_DiagnosticReportCore or DocumentReference)
* activity.detail.location only Reference(CZ_LocationCore)
* activity.detail.performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or HealthcareService or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver)