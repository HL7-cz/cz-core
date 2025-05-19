Extension: AdditionalDataCz
Id:   additional-data-cz
Title:  "Additional data"
Description: "This extension presents additional formalised sample data"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule(1, draft)
* . ^short = "Additional data"
* . ^definition = "This extension presents additional formalised sample data"

* extension contains
    data 0..1 and
    code 1..1 and
    value 0..1
* extension[data] only Extension
* extension[data].value[x] 1..1
* extension[data].value[x] only date
* extension[code] only Extension
* extension[code].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[value] only Extension
* extension[value].value[x] 1..1
* extension[value].value[x] only Quantity