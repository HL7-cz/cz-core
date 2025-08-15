Instance: cz-attachment-example
InstanceOf: CZ_Attachment
Usage: #example
Description: "Example of attachment for DICOM file"
* content.attachment.contentType = #application/dicom
//* content.attachment.language = #cs
* content.attachment.data = "VGhpcyBpcyBhbiBleGFtcGxl" // Encoded in base64
* content.attachment.title = "DICOM file"
* content.attachment.creation = "2025-05-20T12:02:00+01:00"
* status = #current
