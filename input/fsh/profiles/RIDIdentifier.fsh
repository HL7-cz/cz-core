Profile: CZ_RID_Identifier
Parent: Identifier
Id: cz-rid-identifier
Title: "National health sector identifier (CZ)"
Description: "This structure contains the Czech identifier of a person (personal identification number) in healthcare sector"
* insert SetFmmandStatusRule(1, draft)
* use = #official (exactly)
* system 1..1
* system = "https://ncez.mzcr.cz/fhir/sid/rid" (exactly)
* value 1..1
  * obeys rid-rule
  * ^maxLength = 10
//  * ^mustSupport = true
* ^experimental = false
* . ^comment = "Its format is a meaningless ten-digit number that cannot start with a zero. It is divisible by thirteen and not divisible by eleven."
* ^purpose = "This unique identifier is assigned by the Patient Master Register (KRP) to a given patient. The number is randomly assigned and may not be reused."
* . ^short = "Czech national health sector identifier"
* . ^definition = "Czech national health sector identifier is a unique identifier that assigns the Patient Master Register (KRP) to a given patient."

* assigner only Reference(CZ_OrganizationCore)

Invariant: rid-rule
Description: "Czech national personal ID rule"
Severity: #error
Expression: "$this.toString().matches('(D\\\\d{9}|[1-9]\\\\d{9})')"
* requirements = "Czech national personal ID rules."
