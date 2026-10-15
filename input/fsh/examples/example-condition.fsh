Instance: cz-examplemamo-condition
InstanceOf: CZ_ConditionCore
Usage: #example
Description: "Condition example for mammography finding"
Title: "Condition - Mamo finding"
* language = #cs
* subject = Reference(Mracena)
* code.coding[0] = $sctCZ#254837009 "maligní nádor prsu"
* code.coding[+] = $Mkn10#C503 "ZN - dolní vnitřní kvadrant prsu"
* code.text = "Podezření na maligní nádor (BI-RADS 4, BI-RADS 5)."
* bodySite.extension[bodySite].valueReference = Reference(body-structure-mamo)


Instance: body-structure-mamo
InstanceOf: BodyStructureCzCore
Title: "Breast structure Example"
Usage: #example
Description: "Specific and identified anatomical breast structure"

* extension[includedStructure].extension[structure].valueCodeableConcept = $sctCZ#80248007 "levý prs"
* extension[includedStructure].extension[qualifier].valueCodeableConcept = $sctCZ#255495000 "pravý dolní kvadrant"
* extension[includedStructure].extension[laterality].valueCodeableConcept = $sctCZ#7771000 "levý"
* description = "Pravý dolní kvadrant levého prsu s podezřením na maligní nádor (BI-RADS 4, BI-RADS 5)."
* patient = Reference (Mracena)