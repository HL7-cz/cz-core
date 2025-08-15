Profile: CZ_Attachment
Parent: DocumentReference
Id: cz-attachment
Title: "Attachment (CZ)"
Description: "Czech national profile for attachment. "

* . ^short = "Document reference attachment"
* . ^definition = "Document reference attachment profile for Czech national interoperability standards."
* . ^comment = "Attachment can contain base64 encoded data or reference to external URL. URL reference is preferred in case of attached documents."

* insert SetFmmandStatusRule ( 0, draft )

* content.attachment
* content.attachment.contentType MS
* content.attachment.language MS
* content.attachment.url MS
* content.attachment.title MS
* content.attachment.creation MS