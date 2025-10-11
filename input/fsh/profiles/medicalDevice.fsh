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
* type from MedicalDeviceVS (preferred)
//* type from $MedicalDevicesSnomedAbsentUnknownUvIps (preferred)
/* * type ^short = "Type of device.\r\nPreferably valued by using SNOMED CT.\r\nThe absence of information, or absence of devices, shall be explicitly stated by using the codes included in the absent-or-unknown-devices-uv-ips value set."
* type ^binding.extension[0].extension[0].url = "key"
* type ^binding.extension[=].extension[=].valueId = snomed-ct
* type ^binding.extension[=].extension[+].url = "purpose"
* type ^binding.extension[=].extension[=].valueCode = #candidate
* type ^binding.extension[=].extension[+].url = "valueSet"
* type ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-snomed-ct-ips-free-set"
* type ^binding.extension[=].extension[+].url = "documentation"
* type ^binding.extension[=].extension[=].valueMarkdown = "Codes for medical devices in SNOMED CT"
* type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.extension[0].extension[0].url = "key"
* type ^binding.extension[=].extension[=].valueId = ips-absent-or-unknown
* type ^binding.extension[=].extension[+].url = "purpose"
* type ^binding.extension[=].extension[=].valueCode = #candidate
* type ^binding.extension[=].extension[+].url = "valueSet"
* type ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-devices-uv-ips"
* type ^binding.extension[=].extension[+].url = "documentation"
* type ^binding.extension[=].extension[=].valueMarkdown = "Codes for absent or unknown medical devices"
* type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.description = "The type of device or a code for absent/unknown device"
 */
* patient 1..
* patient only Reference(CZ_PatientCore)
* patient.reference 1..
* owner only Reference(CZ_OrganizationCore)
* location only Reference(CZ_LocationCore)
* parent only Reference(CZ_MedicalDevice or CZ_DeviceObserver)