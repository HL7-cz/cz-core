//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_PractitionerRoleOrder
Parent:     CZ_PractitionerRoleCore
Id:         practitionerrole-cz-order
Title:      "Practitioner Role (CZ order)"
Description: "Czech national profile for an practitioner role used for health service ordering. This profile adds mandatory binding to the VZP specialty codes."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = "Key elements include a reference to the healthcare worker (practitioner), institution (organization), role code according to the National Code of Healthcare Professions (NCZP), specialty binding to the VZP specialty valueset, place of performance (location), contact details (telecom), role status (active) and validity period (period)."
* . ^short = "Czech Practitioner Role (core)"
* . ^definition = "This profile sets minimum expectations for a healthcare role in the Czech healthcare system based on the FHIR PractitionerRole."
* insert SetFmmandStatusRule ( 2, trial-use )

//* specialty only CZ_CodeableConcept
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
//* specialty ^comment = "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination."
* specialty contains VZP-SMLUVNI-ODBORNOST 1..1
* specialty contains SNOMED-CT 0..*
* specialty[VZP-SMLUVNI-ODBORNOST].coding from VZPSmluvniOdbornost (required)
* specialty[VZP-SMLUVNI-ODBORNOST].coding.system = "https://ncez.mzcr.cz/terminology/CodeSystem/vzp-smluvni-odbornost" (exactly)
* specialty[VZP-SMLUVNI-ODBORNOST].coding.code 1..1
* specialty[SNOMED-CT] from $hl7PracticeCodes (preferred) // TODO: Correct binding to the CZ valueset when available
* specialty[SNOMED-CT].coding.system = $sct
// * specialty[SNOMED-CT].coding.version 1..1
// * specialty[SNOMED-CT].coding.version = $sctCZ (exactly)
* specialty[SNOMED-CT].coding.code 1..1
//* specialty[SNOMED-CT].coding.code ^definition = "A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).\r\n\r\nIf needed codes can be used from a different system, SNOMED-CT is preferred."
