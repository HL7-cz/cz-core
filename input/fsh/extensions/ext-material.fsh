Extension: MaterialCz
Id:   material-cz
Title:  "Material"
Description: "This extension describes Specimen material"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule(1, draft)
* . ^short = "Material"
* . ^definition = "This extension describes Specimen material"

* value[x] only CodeableConcept
