Profile: CZ_DeviceObserver
Parent: Device
Id: cz-device-observer
Title: "Device:Performer/Observer (CZ)"
Description: "Czech profile represents the constraints applied to the Device resource by the Czech national interoperability project.This profile describes a device that plays the role of observer or performer."
//* ^status = #active
* ^experimental = false
* . ^comment = "The medical device is registered using a UDI identifier (you can find a description below in the document in the identifier section)."
* . ^short = "Czech device"
* . ^definition = "Profile represents the Device resource that plays the role of observer or performer."

* insert SetFmmandStatusRule ( 1, draft )

* identifier //MS
* manufacturer //MS
* modelNumber //MS
* patient only Reference(CZ_PatientCore)
* owner only Reference(CZ_OrganizationCore)
* location only Reference(CZ_LocationCore)
* parent only Reference(CZ_DeviceObserver or CZ_MedicalDevice)