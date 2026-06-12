Profile: CZ_DeviceUseStatementCore
Parent: DeviceUseStatement
Id: deviceUseStatement-cz-core
Title: "Device Use Statement (CZ core)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described as an instance of a Device resource constrained by this profile."

* text ^short = "Device usage description"
* subject only Reference(CZ_PatientCore or Group)
* subject ^definition = "The patient using the device."
//* timing[x] 1..1
//* timing[x].extension contains $data-absent-reason named data-absent-reason 0..1
//* timing[x].extension[data-absent-reason] ^definition = "Provides a reason why the timing is missing."
* source only Reference(CZ_PatientCore or CZ_PractitionerRoleCore or CZ_PractitionerCore or CZ_RelatedPersonCore)
* reasonCode ^short = "Why is used (code)"
* reasonReference only Reference ( CZ_ConditionCore or CZ_MedicalTestResultCore or Media or CZ_DiagnosticReportCore or DocumentReference)
  * ^short = "Why is used (details)"
* device only Reference(CZ_MedicalDevice)
* bodySite
* bodySite from $hl7BodySite (preferred)
  * ^comment = "If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite is present, it shall be coherent with the type"
* extension contains $bodySite-reference named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureCzCore)
