Instance: Specimen-example-animal
InstanceOf: CZ_Specimen
Usage: #example
Description: "Example of a specimen for animal patient."

* status = #available
* type = $sct#119297000	"Blood specimen"
* subject = Reference(Patient/Kocka) "Kočka"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"
* extension[material].valueCodeableConcept = #B(C) "B(kap.)"
