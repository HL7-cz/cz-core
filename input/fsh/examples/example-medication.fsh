Instance: Medication
InstanceOf: CZ_MedicationStatement
Title: "MedicationStatement - Ongoing Simvastatin Treatment"
Description: "Czech national profile for a medication statement."
Usage: #example
* identifier[+].system = "http://example.org/exampleSystem" //vydavatel identifikatoru nemocnice vs. NIS
* identifier[=].value = "medstat-1"
//* contained[+] = med-1
* status = #active
* medicationReference = Reference(med-1) "simvastatin"
* subject = Reference(Mracena) "Mračena Mraková"
* effectivePeriod.start = "2014"
* dosage.text = "40 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity = 40 'mg' "mg"

Instance: med-1
InstanceOf: CZ_Medication
Title: "Medication - Simvastatin 40 MG Disintegrating Oral Tablet"
Description: "Medication - Simvastatin 40 MG Disintegrating Oral Tablet"
Usage: #example
* identifier[+].system = "http://example.org/exampleSystem" //vydavatel identifikatoru nemocnice vs. NIS
* identifier[=].value = "med-1"
* code.coding[0] = $CZ_DLPLecivePripravkyCs#0013831 "SIMVASTATIN RATIOPHARM 40MG TBL FLM 20"
* code.coding[+] = $CZ_DLPATCCs#C10AA01 "simvastatin"
* code.text = "Simvastatin 40 MG TBL FLM 20"
* form.coding[0] = $CZ_DLPFormyCs#"TBL FLM" "Potahovaná tableta"
* form.coding[+] = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept = $CZ_DLPLecivelatkyCs#10647 "Simvastatin"
* ingredient.strength.numerator = 40 'mg' "mcg"
* ingredient.strength.denominator = 1 '1' "tablet"