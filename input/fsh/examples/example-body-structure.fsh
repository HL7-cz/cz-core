Instance: BodyStructure01
InstanceOf: BodyStructureCzCore
Title: "Body structure Example"
Usage: #example
Description: "Specific and identified anatomical structure"

* morphology[+] = $sctCZ#3404009 "rána po kousnutí"
* extension[includedStructure].extension[structure].valueCodeableConcept = $sctCZ#7874003 "lopatková krajina zad"
* extension[includedStructure].extension[qualifier].valueCodeableConcept = $sctCZ#255497008 "pravý horní kvadrant"
* extension[includedStructure].extension[laterality].valueCodeableConcept = $sctCZ#24028007 "pravý"
* patient = Reference (Mracena)

