ValueSet:      HealthInsuranceCompanyCodeCzVs
Id:	       healthInsuranceCompanyCode-cz-vs
Title:	       "ValueSet of Health Insurance Company Code"
Description:   "ValueSet of Health Insurance Company Code. Identification number of a health insurance companies using the three-digit identification number of a company."
* ^language = #cs-CZ
//* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.1.7"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/fhir/ValueSet/KP"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system HealthInsuranceCompanyCodeCzCs


