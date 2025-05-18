Extension: InstrumentCz
Id:   instrument-cz
Title:  "Instrument"
Description: "This extension presents Device, instrument, physical object (drain, electrode, catheter, etc.)."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Patient)
* insert SetFmmandStatusRule(1, draft)
* . ^short = "Instrument"
* . ^definition = "This extension presents Device, instrument, physical object (drain, electrode, catheter, etc.)."

* value[x] only CodeableConcept