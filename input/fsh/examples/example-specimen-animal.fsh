Instance: Specimen-example-animal
InstanceOf: CZ_Specimen
Usage: #example
Description: "Example of a specimen taken from animal."

* status = #available
* type = $sct#119297000	"Blood specimen"
* subject = Reference(Patient/Kocka) "Kočka"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"
//* extension[material].valueCodeableConcept = https://hl7.cz/fhir/core/CodeSystem/nclpmat-cz-cs#B(C) "B(kap.)"

Instance: Specimen-example-environment
InstanceOf: CZ_Specimen
Usage: #example
Description: "Example of a specimen taken from environment."

* status = #available
* type = $sct#446302006	"Air specimen"
* subject = Reference(Location/Praha5) "Nádražní 1, Praha 5"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"


Instance: Specimen-example-environment2
InstanceOf: CZ_Specimen
Usage: #example
Description: "Example of a specimen taken from environment."

* status = #available
* type = $sct#446302006	"Air specimen"
* subject = Reference(Location/Location-Praha5)
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: Location-Praha5
InstanceOf: Location
Usage: #example
Description: "Example of a location."
* status = #active
* name = "Nádražní 1, Praha 5"
* address
  * type = #physical
  * text = "Nádražní 1, Praha 5"
  * line[0] = "Nádražní 1"
  * city = "Praha"
  * postalCode = "15000"
  * country = "Czech Republic"
