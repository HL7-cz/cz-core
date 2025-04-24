Instance: BodyStructure01
InstanceOf: BodyStructureCz
Title: "Body structure Example"
Usage: #example
Description: "Specific and identified anatomical structure"

* morphology[+] = $sct#3404009 "Kousnutí"
* location[+] = $sct#7874003 "Oblast lopatky na zádech"
* locationQualifier[+] = $sct#255497008 "Pravý horní kvadrant"
* description = "Canis lupus familiaris viděl na zádech poraněného sedět Musca domestica a při útoku na ni došlo k neúmyslnému pokousání"

//* extension[laterality][+].extension[url].valueString = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.laterality"
* extension[laterality].valueCodeableConcept = $sct#24028007 "Pravá"

//* contained[+] = Mracena
* patient = Reference (Patient/Mracena)

