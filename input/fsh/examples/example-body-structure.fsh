Instance: BodyStructure01
InstanceOf: BodyStructureCzCore
Title: "Body structure Example"
Usage: #example
Description: "Specific and identified anatomical structure"

* morphology[+] = $sctCZ#3404009 "Bite"
* extension[includedStructure].extension[structure].valueCodeableConcept = $sctCZ#7874003 "Scapular region of back"
* extension[includedStructure].extension[qualifier].valueCodeableConcept = $sctCZ#255497008 "RUQ - Right upper quadrant"
* extension[includedStructure].extension[laterality].valueCodeableConcept = $sctCZ#24028007 "Right"
* patient = Reference (Mracena)

