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
* insert SetFmmandStatusRule ( 1, draft )
* insert ImposeProfile($Organization-eu-core, 0)

* name 0..1
* identifier 0..*
* obeys cz-org-1
// Přidání rozšíření pro logo
* extension contains $cz-organization-logo named logo 0..1

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Invariant: cz-org-1
Description: "Organization.name or Identifier.value MUST be filled."
Severity: #error
Expression: "name.exists() or identifier.value.exists()"

