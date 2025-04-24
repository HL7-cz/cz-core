Instance: Medication
InstanceOf: CZ_MedicationStatement
Title: "MedicationStatement - Ongoing Simvastatin Treatment"
Description: "Czech national profile for a medication statement."
Usage: #example
* identifier.system = "http://hospital.cz/" //vydavatel identifikatoru nemocnice vs. NIS
* identifier.value = "medstat-1"
* status = #active
* medicationReference = Reference(Medication/med-1) "simvastatin"
* subject = Reference(Patient/Mracena) "Mračena Mraková"
* effectivePeriod.start = "2014"
* dosage.text = "40 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity = 40 'mg' "mg"

Instance: med-1
InstanceOf: Medication
Title: "Medication - Simvastatin 40 MG Disintegrating Oral Tablet"
Description: "Medication - Simvastatin 40 MG Disintegrating Oral Tablet"
Usage: #example
* identifier.system = "http://hospital.cz/" //vydavatel identifikatoru nemocnice vs. NIS
* identifier.value = "med-1"
* code.coding[0] = https://hl7.cz/fhir/core/CodeSystem/dlplecivepripravky-cz-cs#0013831 "SIMVASTATIN RATIOPHARM 40MG TBL FLM 20"
* code.coding[+] = $atc#C10AA01 "simvastatin"
* code.text = "Simvastatin 40 MG TBL FLM 20"
* form.coding[0] = https://hl7.cz/fhir/core/CodeSystem/dlpformy-cz-cs#TBL_FLM "Potahovaná tableta"
* form.coding[+] = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept = https://hl7.cz/fhir/core/CodeSystem/dlplecivelatky-cz-cs#10647 "Simvastatin"
* ingredient.strength.numerator = 40 'mg' "mcg"
* ingredient.strength.denominator = 1 '1' "tablet"