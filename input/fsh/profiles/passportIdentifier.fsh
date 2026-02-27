Profile: CZ_Passport_Identifier
Parent: Identifier
Id: cz-passport-identifier
Title: "Passport identifier"
Description: "This structure specifies the passport identifier."
* insert SetFmmandStatusRule(1, draft)
* use 1..1
* use = #official (exactly)
* type 1..1
* type = $v2-0203#PPN (exactly)
* system 1..1
* system from $passport-uri (required)
  * ^short = "Name space according to the passport issuer. FHIR records namespaces for passports in the format - http://hl7.org/fhir/sid/passport-XXX, where XXX is the three-letter country code according to ISO 3166"
  * obeys passport-system-iso3
* value 1..1
  * obeys passport-rule
  * ^maxLength = 9
//  * ^mustSupport = true
* ^experimental = false
* . ^comment = "Passport number can be used as a temporary identifier for a foreign citizen in situations where national health sector identifier (RID/DRID) has not been assigned yet."
* ^purpose = "An additional identifier for a patient, which can be used in situations where the national health sector identifier (RID/DRID) has not been assigned yet. It is particularly useful for foreign citizens."
* . ^short = "Passport number including the country code"
* . ^definition = "The passport number is usually a combination of letters and numbers, but the exact format depends on the country."
* assigner only Reference(CZ_OrganizationCore)

// ======================================================
// Invariants
// ======================================================

Invariant: passport-system-iso3
Description: "Identifier.system SHALL be http://hl7.org/fhir/sid/passport-XXX where XXX is ISO 3166-1 alpha-3."
Severity: #error
Expression: "matches('^http://hl7.org/fhir/sid/passport-[A-Z]{3}$')"

Invariant: passport-rule
Description: "General passport number rule"
Severity: #error
Expression: "matches('[0-9A-Z]{6,9}')"
* requirements = "Passport number rules."


// ======================================================
// Datatype Profile: Passport Identifier
// ======================================================

/* * type 1..1
* type.coding 1..*
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open

* type.coding contains ppn 1..1
* type.coding[ppn].system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* type.coding[ppn].code = #PPN (exactly)
* type.coding[ppn].display = "Passport Number"

* system 1..1
* system ^short = "FHIR SID for passport issuer country"
* system from PassportSidValueSet (required)

* value 1..1
* value ^short = "Passport number"

* assigner 0..1
* assigner ^short = "Issuing authority (optional; country implied by system)"

 */