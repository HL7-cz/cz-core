Profile: CZ_Logo
Parent: DocumentReference
Id: cz-logo
Title: "DocumentReference containing logo"
Description: "Czech national profile for document reference containing logo."

* . ^short = "Logo"
* . ^definition = "Base64 encoded logo"

* insert SetFmmandStatusRule ( 0, draft )

* status = #current
* docStatus 0..0
* type // TODO: Najít vhodný kód pro logo
* subject 0..0
* relatesTo 0..0
* language 0..0
* context 0..0

* content.attachment.contentType 1..1
* content.attachment.contentType from CZ_LogoMimeTypesVs
  * ^short = "MIME type of the logo image"
  * ^definition = "MIME type of the logo image, such as image/png or image/jpeg."
* content.attachment.language 0..0
* content.attachment.url 0..0
* content.attachment.data 1..1
  * ^short = "Base64 encoded image data"
  * ^definition = "Base64 encoded image data for the logo"
  * ^comment = "The image data should be in a format suitable for logos, such as PNG or JPEG. Image size should be constrained to ensure it is suitable for display in various contexts."
* content.attachment.title 1..1
  * ^short = "Logo alternative text"
  * ^definition = "Alternative text of the logo image to ensure accessibility."
