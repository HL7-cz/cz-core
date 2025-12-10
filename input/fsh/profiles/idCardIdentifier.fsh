Profile: Id_Card_Identifier
Parent: Identifier
Id: id-card-identifier
Title: "National ID card identifier"
Description: "This structure specifies the national personal ID card identifier."
* insert SetFmmandStatusRule(1, draft)
* use = #official (exactly)
* type = $v2-0203#CZ  // National ID card number
* system 1..1
* system from $OPNSVS
  * ^short = "Name space according to the national ID card issuer. FHIR records namespaces for passports in the format - https://ncez.mzcr.cz/fhir/sid/IdCardNumNS-XXX, where XXX is the three-letter country code according to ISO 3166"
* value 1..1
//  * obeys passport-rule
//  * ^maxLength = 9
//  * ^mustSupport = true
* ^experimental = false
* . ^comment = "National ID card number can be used as a temporary identifier for a foreign citizen in situations where national health sector identifier (RID/DRID) has not been assigned yet."
* ^purpose = "An additional identifier for a patient, which can be used in situations where the national health sector identifier (RID/DRID) has not been assigned yet. It is particularly useful for foreign EU citizens."
* . ^short = "National ID card number including the country code"
* . ^definition = "The ID card number is usually a combination of letters and numbers, but the exact format depends on the country."
* assigner only Reference(CZ_OrganizationCore)


/* Invariant: passport-rule
Description: "General passport number rule"
Severity: #error
Expression: "matches('[0-9A-Z]{6,9}')"
* requirements = "Passport number rules."
 */