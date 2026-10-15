Profile: Id_Card_Identifier
Parent: Identifier
Id: id-card-identifier
Title: "Personal ID card identifier"
Description: "Identifier for personal ID card number using FHIR SID and v2-0203#CZ."
* insert SetFmmandStatusRule( 2, trial-use )
* use = #official (exactly)
* type = $v2-0203#CZ (exactly) // National ID card number
* system 1..1
* system from $idcard-uri (required)
  * ^short = "Name space according to the national ID card issuer. FHIR records namespaces for personal ID cards in the format - https://hl7.cz/fhir/sid/idcard-XXX, where XXX is the three-letter country code according to ISO 3166"
  * obeys idcard-system-iso3
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


Invariant: idcard-system-iso3
Description: "Identifier.system SHALL be https://hl7.cz/fhir/sid/idcard-XXX where XXX is ISO 3166-1 alpha-3."
Severity: #error
Expression: "matches('^https://hl7.cz/fhir/sid/idcard-[A-Z]{3}$')"