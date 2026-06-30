//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_OrganizationCore
Parent:     CZ_OrganizationBase
Id:         cz-organization-core
Title:      "Organization (CZ core)"
Description: """Czech national profile sets minimum expectations for the Organization resource common to most of the use cases."""
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Organization (core)"
* . ^definition = "Czech national profile sets minimum expectations for represention of organization in HL7 FHIR."
* insert SetFmmandStatusRule ( 2, trial-use )
* insert ImposeProfile($Organization-eu-core, 0)

* name 0..1
* identifier 0..*
// to je zbytečné, dědí se to z CZ_OrganizationBase
//* obeys cz-org-1
// Přidání rozšíření pro logo
* extension contains $cz-organization-logo named logo 0..1
* extension[logo]
  * ^short = "Organisation logo"
  * ^definition = "This entry refer to DocumentReference resource containing or referring to the organisation logo. The image data should be in a format suitable for logos, such as PNG or JPEG. Image size should not ecete 200 kB to ensure it is suitable for display in various contexts."
* partOf only Reference(CZ_OrganizationCore)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Invariant: cz-org-1
// Description: "Organization.name or Identifier.value MUST be filled."
// Severity: #error
// Expression: "name.exists() or identifier.value.exists()"

