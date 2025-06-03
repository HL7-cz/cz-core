//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_PractitionerRoleBase
Parent:     PractitionerRoleEu
Id:         cz-practitionerrole-base
Title:      "PractitionerRole (CZ base)"
Description: "Czech national profile for an practitioner role.It enables the identification of healthcare and non-healthcare workers, their expertise, workplaces and contact details."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* . ^comment = "Key elements include a reference to the healthcare worker (practitioner), institution (organization), role code according to the National Code of Healthcare Professions (NCZP), specialization according to the KRPZS, place of performance (location), contact details (telecom), role status (active) and validity period (period). A specific extension for the Czech Republic is the connection with the Master Register of Healthcare Workers (KRZP) and the KRPZS, which enables verification of expertise and valid registration."
* . ^short = "Czech Practitioner Role (base)"
* . ^definition = "The profile defines the representation of a healthcare role in the Czech healthcare system based on the FHIR PractitionerRole."

* practitioner only Reference(CZ_PractitionerCore)
* organization only Reference(CZ_OrganizationCore)
//* organization

* code
//* code only CZ_CodeableConcept
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code ^definition = "Roles which this practitioner is authorized to perform for the organization.\r\n\r\nFor compatibility reasons, CD-HCPARTY is described here to express the role of the practitioner. Other coding systems remain allowed.\r\nTowards the future, the use of SNOMED-CT codes is also RECOMMENDED here. In the future, other ways to codfy might however be also proposed.\r\n\r\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* code contains  // TO-DO: zvážit ISCO urn:oid:2.16.840.1.113883.2.9.6.2.7 a zjistit, zda v této oblasti existuje použitelný kódový systém NZIS
    NRZP_POVOLANI 0..* //and
    //SNOMED-CT 0..*
* code[NRZP_POVOLANI] ^definition = "Roles which this practitioner is authorized to perform for the organization according to the National registry of healthcare practitioners."
* code[NRZP_POVOLANI].coding.system = $nrzp_povolani (exactly)
* code[NRZP_POVOLANI].coding.code 1..
* code[NRZP_POVOLANI] from NRZP_PovolaniVS (required)
/*
* code[SNOMED-CT] ^definition = "Role/povolání ke kterým je zdravotnický pracovník oprávněn v rámci poskytovatele .\n\nRoles which this practitioner is authorized to perform for the organization."
* code[SNOMED-CT].coding.system = $sct (exactly)
* code[SNOMED-CT].coding.code 1..
*/
//* specialty only CZ_CodeableConcept
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty ^comment = "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination."
* specialty contains SNOMED-CT 0..*
* specialty[SNOMED-CT].coding from PracticeSettingCodeValueSet (preferred)
* specialty[SNOMED-CT].coding ^binding.description = "base resource valueset"
* specialty[SNOMED-CT].coding.system = "http://snomed.info/sct" (exactly)
* specialty[SNOMED-CT].coding.code 1..
* specialty[SNOMED-CT].coding.code ^definition = "A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).\r\n\r\nIf needed codes can be used from a different system, SNOMED-CT is preferred."

* location only Reference(CZ_LocationCore)