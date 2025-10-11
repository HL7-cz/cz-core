// -------------------------------------------------------------------------------
//  Value Set. File: 	medicalDevice.fsh
// -------------------------------------------------------------------------------
ValueSet: MedicalDeviceVS
Id: medical-device
Title: "Medical Device"
Description: """Medical Device value set is used for coding implanted and external medical devices and equipment."""
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"
// * ^status = #active
* ^experimental = false
* ^language = #cs

* insert setUrl ( medical-device )
* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.8 )

* include codes from system $sct where concept descendant-of #49062001 "Device (physical object)"