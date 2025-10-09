Instance: Specimen-example-animal
InstanceOf: CZ_Specimen
Usage: #example
Description: "Example of a specimen taken from animal."

* status = #available
* type = $sct#119297000	"Blood specimen"
* subject = Reference(Patient/Kocka) "Kočka"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"
//* extension[material].valueCodeableConcept = https://fhir.hl7cr.eu/core/CodeSystem/nclpmat-cz-cs#B(C) "B(kap.)"

Instance: Specimen-example-environment
InstanceOf: CZ_Specimen
Usage: #example
Description: "Example of a specimen taken from environment."

* status = #available
* type = $sct#446302006	"Air specimen"
* subject = Reference(Location-Praha5)
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: Location-Praha5
InstanceOf: CZ_LocationCore
Usage: #example
Description: "Example of a location."
* status = #active
* name = "Nádražní 1, Praha 5"
* address
* address.type = #physical
* address.text = "Nádražní 1, Praha 5"
* address.line[+] = "Nádražní 1"
* address.line[=].extension[streetName].valueString = "Nádražní"
* address.line[=].extension[houseNumber].valueString = "1"
* address.city = "Praha"
* address.postalCode = "15000"
* address.country = "Czech Republic"
