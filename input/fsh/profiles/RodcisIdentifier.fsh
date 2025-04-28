Profile: CZ_Rodcis_Identifier
Parent: Identifier
Id: cz-rodcis-identifier
Title: "Czech national birth number"
Description: "This structure contains the Czech identifier of a person (personal identification number)"
* ^experimental = false
* . ^comment = ""
* ^purpose = "Czech national birth number. National birth number are assigned to:
\r\n• a natural person at birth or adoption of a minor natural person
\r\n• a citizen who has not yet had a personal identification number, a foreigner with a residence permit in the Czech Republic
\r\n• a foreigner who has been granted international protection in the Czech Republic in the form of asylum or subsidiary protection
\r\n• foreigner who has requested the fulfillment of conditions under a special legal regulation for the assignment of a personal identification number, e.g. studying at a university, employment, etc.
\r\n• a natural person for whom the Czech Social Security Administration or the District Social Security Administration requests the assignment of a personal identification number under a special legal regulation."
* . ^short = "Czech national birth number"
* . ^definition = "Czech national identifier defines how to representNational birth number in HL7 FHIR."

* insert SetFmmandStatusRule(1, draft)
* use = #official (exactly)
* system 1..1
* system = "https://ncez.mzcr.cz/fhir/sid/rcis" (exactly)
* value 1..1
  * obeys rc
  * ^maxLength = 10
  * ^mustSupport = false


Invariant: rc
Description: "Czech national personal ID rule"
Severity: #error
Expression: "matches('[0-9]{2}(?:[0257][1-9]|[1368][0-2])(?:0[1-9]|[12][0-9]|3[01])[0-9]{3,4}')"
* requirements = "Czech national personal ID rules."
