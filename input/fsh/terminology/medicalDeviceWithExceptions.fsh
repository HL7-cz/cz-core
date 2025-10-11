// -------------------------------------------------------------------------------
//  Value Set. File: 	medicalDeviceWithExceptions.fsh
// -------------------------------------------------------------------------------
ValueSet: MedicalDeviceWithExceptionsVS
Id: MedicalDeviceWithExceptions
Title: "Medical Device with exceptions"
Description: "The Value Set is used for coding implanted and external medical devices and equipmen.
It also includes exceptional values."
* ^experimental = false
* ^language = #cs
* ^url = "https://ncez.mzcr.cz/fhir/ValueSet/medical-device-with-exceptions"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset MedicalDeviceVS
* codes from valueset EHDSIAbsentOrUnknownDevice
* codes from valueset EHDSIExceptionalValue