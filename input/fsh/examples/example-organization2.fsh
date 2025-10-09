Instance: Organization-2
InstanceOf: cz-organization-core
Usage: #example
Description: "An example of the organization with logo extension"
* contained[+] = attachment-logo-FN-Motol  // Příklad přílohy s logem
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "456789655"
* type[+] = $drzar#320 "Samost. ordinace všeob. prakt. lékaře"
* name = "MUDr. Hana Doktorová"
* telecom[0].system = #phone
* telecom[=].value = "+420257216007"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "+420257216007"
* telecom[=].use = #work

* address[+].use = #work
* address[=].type = #both
* address[=].text = "Plzeňská 951/125, 150 00 Praha 5"
* address[=].line[+] = "Plzeňská 951/125"
* address[=].line[=].extension[streetName].valueString = "Plzeňská"
* address[=].line[=].extension[houseNumber].valueString = "951/125"
* address[=].city = "Praha"
* address[=].postalCode = "15000"
* address[=].country = "CZ"
// Rozšíření organization-logo aliasované jako cz-organization-logo
* extension[logo].url = $cz-organization-logo
* extension[logo].valueReference.reference = "#attachment-logo-FN-Motol"

