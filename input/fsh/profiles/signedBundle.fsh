//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: CZ_SignedBundle
Parent: Bundle
Id: cz-signedBundle
Title: "Signed Bundle (CZ)"
Description: "Czech national profile for signed bundle. Contains a bundle and an provenance for representation of a medical document."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Signed Bundle"
* . ^definition = "Czech national profile defines how to represent a signed bundle in HL7 FHIR."
* insert SetFmmandStatusRule ( 1, draft )

* identifier ^short = "Business identifier of document"
* identifier 1..
* type = #collection
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the Singed bundle"
* entry ^definition = "An entry resource included in signed document bundle resource."
* entry.resource 1..

* entry contains
    bundle 1..1 and
    provenance 1..1

* entry[bundle].resource only Bundle
* entry[provenance].resource only CZ_Provenance
