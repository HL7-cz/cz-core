//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_OrganizationBase
Parent:     OrganizationEu
Id:         cz-organization-base
Title:      "Organization (CZ base)"
Description: "Czech national profile defines the way the organization is represented in the context of the Czech national interoperability project."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* insert SetFmmandStatusRule ( 1, draft )
* . ^comment = ""
* . ^short = "Czech Organization (base)"
* . ^definition = "Czech national profile defines how to represent an organization in HL7 FHIR."

//* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems. \r\nTypically, an KRPZS value and/or IČO or IČZ/IČP value are given. Other systems are allowed, however use of KRPZS Id is preferred. Flows in organizations will most likely want to also include a local identifier, using its own identification system. A type can be added if needed. When it is given, a consumer SHALL NOT ignore it. In the case of health insurance organizations, the insurance company code is given (KP)."
* identifier contains
    KRPZS 0..1 and
    ICO 0..1 and
    ICZ 0..1 and
    ICP 0..1 and
    KP 0..1
* identifier[KRPZS].system = "https://ncez.mzcr.cz/fhir/sid/krpzs" (exactly)
* identifier[KRPZS].value 1..
* identifier[KRPZS] ^short = "This identification is according to the National Register of Health Service Providers."
* identifier[KRPZS].assigner only Reference(CZ_OrganizationCore)
* identifier[ICO].system = "https://ncez.mzcr.cz/fhir/sid/ico" (exactly)
* identifier[ICO].value 1..
* identifier[ICO].assigner only Reference(CZ_OrganizationCore)
* identifier[ICZ].system = "https://ncez.mzcr.cz/fhir/sid/icz" (exactly)
* identifier[ICZ].value 1..
* identifier[ICZ].assigner only Reference(CZ_OrganizationCore)
* identifier[ICP].system = "https://ncez.mzcr.cz/fhir/sid/icp" (exactly)
* identifier[ICP].value 1..
* identifier[ICP].assigner only Reference(CZ_OrganizationCore)
* identifier[KP].system = "https://ncez.mzcr.cz/fhir/sid/kp" (exactly)
* identifier[KP].value 1..
* identifier[KP].value from HealthInsuranceCompanyCodeCzVs
* identifier[KP].assigner only Reference(CZ_OrganizationCore)

* active ^definition = "Whether the organization's record is still in active use."

//* name MS

* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^definition = "The kind(s) of organization that this is.\r\n\r\n. Type should be taken from DRZAR value set."
//* type only CZ_CodeableConcept
* type contains DRZAR 0..*
* type[DRZAR].coding.system = $drzar (exactly)
* type[DRZAR].coding.code 1..
* type[DRZAR] from DrzarVS (required)

//* telecom ^definition = "A contact detail for the organization.\r\n\r\nIt is RECOMMENDED to at least add one phone or email address."

* address only CZ_Address
//* address ^definition = "An address for the organization.\r\n\r\nIt is RECOMMENDED to include this when available"

* partOf only Reference(CZ_OrganizationCore)