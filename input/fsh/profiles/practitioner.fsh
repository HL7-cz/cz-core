//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: CZ_PractitionerBase
Parent: PractitionerEu
Id: cz-practitioner-base
Title: "Practitioner (CZ base)"
Description: "Czech national profile for practitioner.Contains information about a person who provides healthcare or is a participant in the creation of a medical document."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Practitioner (base)"
* . ^definition = "Czech national profile defines how to represent a practitioner in HL7 FHIR."
* insert SetFmmandStatusRule ( 1, draft )

//* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier that applies to this person in this role.\r\nTypically, a KRZP value is given and/or CLK identifier provided by the Czech Medical Chamber or identifier of Pharmacist (PharmID) provided by the Czech Chamber of Pharmacists, however use of KRZP Id is preferred. Other systems remain allowed. Flows in organizations will most likely want to also include a local identifier, using its own system. A type can be added if needed. When it is given, a consumer SHALL NOT ignore it."
* identifier contains
    KRZP 0..* and
    CLK 0..* and
    CLeK 0..*
* identifier[KRZP].system = "https://ncez.mzcr.cz/fhir/sid/krzp" (exactly)
* identifier[KRZP].value 1..
* identifier[KRZP].assigner only Reference(CZ_OrganizationCore)
* identifier[CLK].system = "https://ncez.mzcr.cz/fhir/sid/clk" (exactly)
* identifier[CLK].value 1..
* identifier[CLK].assigner only Reference(CZ_OrganizationCore)
* identifier[CLeK].system = "https://ncez.mzcr.cz/fhir/sid/clek" (exactly)
* identifier[CLeK].value 1..
* identifier[CLeK].assigner only Reference(CZ_OrganizationCore)
* active ^definition = "Whether this practitioner's record is in active use. \r\n\r\nIt is RECOMMENDED to keep the value ‘true’ as long as the practitioner is still being treated by the provider of the data."
/*
* name 0..1 MS
* name.family MS
* name.given MS
* name ^definition = "The name(s) associated with the practitioner.\r\n\r\nTypically RECOMMENDED to include one familyname and at least one given name and to define this use as ‘official’."

* telecom MS
* telecom ^definition = "A contact detail for the practitioner, e.g. a telephone number or an email address.\r\n\r\nIt is RECOMMENDED to at least add one phone or email address."

* address MS
*/
* address only CZ_Address
/*
* communication ^definition = "A language the practitioner can use in patient communication.\r\n\r\nIt is RECOMMENDED to include this when available"
* communication ^comment = "The structure aa-BB with this exact casing is one the most widely used notations for locale. However not all systems code this but instead have it as free text. Hence CodeableConcept instead of code as the data type.\r\n\r\nSpecial remarks for KMEHR users:\r\nThe 'usuallanguage' element in a KMEHR message only refers to the use of W3C language codes. As such, the language codes as proposed in the FHIR standard should not present any interoperability issue.\r\nNote the KMEHR element implies it is the language usally used by the practitioner. "
*/

* qualification.issuer only Reference(CZ_OrganizationCore)