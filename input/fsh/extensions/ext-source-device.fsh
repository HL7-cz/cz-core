Extension: SourceDeviceCz
Id:   source-device-cz
Title:  "Source device"
Description: "This extension allows describe source if the specimen is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule(1, draft)
* . ^short = "Source device"
* . ^definition = "This extension allows describe source if the specimen is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"

* value[x] only CodeableConcept