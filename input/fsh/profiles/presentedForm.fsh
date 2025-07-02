Profile: CZ_Presented_Form
Parent: DocumentReference
Id: cz-presented-form
Title: "Presented Form (CZ)"
Description: "Czech national profile for presented form. "

* insert SetFmmandStatusRule ( 0, draft )

* content.attachment
* content.attachment.contentType MS
* content.attachment.language MS
* content.attachment.url MS
* content.attachment.title MS
* content.attachment.creation MS
* content obeys presentedform-01

Invariant: presentedform-01
Description: "At least one of presented form has PDF format"
Severity: #warning
Expression: "attachment.where(contentType = 'application/pdf').count() > 0"