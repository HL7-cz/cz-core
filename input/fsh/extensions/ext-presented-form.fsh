Extension: DocumentPresentedForm
Id:   presentedForm
Title:  "Composition: Presented Form"
Description: """Human readable representation of the entire document. Multiple formats are allowed but they SHALL be semantically equivalent."""
Context: Composition
* insert SetFmmandStatusRule ( 2, trial-use )
* ^url = "https://hl7.cz/fhir/core/StructureDefinition/presentedForm"
* value[x] only Attachment