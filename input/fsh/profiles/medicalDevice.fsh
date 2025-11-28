Profile: CZ_MedicalDevice
Parent: Device
Id: cz-medical-device
Title: "Medical Device (CZ)"
Description: "Czech profile represents the constraints applied to the Device resource by the Czech national interoperability project.This profile constrains the representation of a medical device used by or implanted on the patient."
//* ^status = #active
* ^experimental = false
* . ^comment = "This profile applies the rules defined by NCEZ for representing the UDI in the FHIR standard, by the document \"HL7 IG: UDI Pattern R2\""
* . ^short = "Czech medical devices"
* . ^definition = "Profile represents the Device resource by the Czech national interoperability project."
* insert SetFmmandStatusRule ( 1, draft )

* type 0..1
* type from $MedicalDeviceVS (preferred)
* patient 1..
* patient only Reference(CZ_PatientCore)
* patient.reference 1..
* owner only Reference(CZ_OrganizationCore)
* location only Reference(CZ_LocationCore)
* parent only Reference(CZ_MedicalDevice or CZ_DeviceObserver)