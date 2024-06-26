ValueSet: NRZP_PovolaniVS
Id: nrzp-povolani-vs
Title: "Povolání zdravotnického pracovníka (CZ)"
Description: "Povolání zdravotnického pracovníka evidované v národním registru zdravotnických pracovníků"
* ^language = #cs
//* ^identifier.system = "urn:ietf:rfc:3986"
//* ^identifier.value = "urn:oid:1.2.203.24341.11.1.7"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/fhir/ValueSet/nrzp-povolani-vs"
* insert SetFmmandStatusRule(2, trial-use)

* include codes from system NRZP_PovolaniCS