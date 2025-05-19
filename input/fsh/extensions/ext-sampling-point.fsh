Extension: SamplingPointCz
Id:   sampling-point-cz
Title:  "Sampling Point"
Description: "This extension describes the area where the material was collected; refers to the environment, not the patient."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule(1, draft)
* . ^short = "Sampling Point"
* . ^definition = "This extension describes the area where the material was collected; refers to the environment, not the patient."

* value[x] only CodeableConcept