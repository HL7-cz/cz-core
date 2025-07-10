Profile: CZ_Passport_Identifier
Parent: Identifier
Id: cz-passport-identifier
Title: "Passport identifier"
Description: "This structure specifies the passport identifier."
* insert SetFmmandStatusRule(1, draft)
* use = #official (exactly)
* type = $v2-0203#PPN
* system 1..1
* system from $PassportNSVS
  * ^short = "Name space according to the passport issuer. FHIR records namespaces for passports in the format - http://hl7.org/fhir/sid/passport-XXX, where XXX is the three-letter country code according to ISO 3166"
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

Invariant: passport-rule
Description: "General passport number rule"
Severity: #error
Expression: "matches('[0-9A-Z]{6,9}')"
* requirements = "Passport number rules."
