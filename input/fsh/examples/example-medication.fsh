Instance: MedicationStatement
InstanceOf: CZ_MedicationStatementCore
Title: "MedicationStatement - Ongoing Simvastatin Treatment"
Description: "Czech national profile for a medication statement."
Usage: #example
* identifier[+].system = "http://example.org/exampleSystem" //vydavatel identifikatoru nemocnice vs. NIS
* identifier[=].value = "medstat-1"
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
InstanceOf: CZ_MedicationCore
Title: "Medication - Simvastatin 40 MG Disintegrating Oral Tablet"
Description: "Medication - Simvastatin 40 MG Disintegrating Oral Tablet"
Usage: #example
* identifier[+].system = "http://example.org/exampleSystem" //vydavatel identifikatoru nemocnice vs. NIS
* identifier[=].value = "med-1"
* code = $dlp-lecive-pripravky-cs#0013831 "SIMVASTATIN RATIOPHARM 40MG TBL FLM 20"
* extension.url = "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification"
* extension.valueCodeableConcept = $CZ_DLPATCCs#C10AA01 "simvastatin"
* code.text = "Simvastatin 40 MG TBL FLM 20"
//* form.coding[0] = $CZ_DLPFormyCs#"TBL FLM" "Potahovaná tableta"
* form.coding[+] = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $CZ_DLPLecivelatkyCs#10647 "Simvastatin"
* ingredient.strength.numerator = 40 'mg' "mcg"
* ingredient.strength.denominator = 1 '1' "tablet"

Instance: 400C-prescription-cefuroxime-singleline
InstanceOf: CZ_MedicationRequestCore
Usage: #example
Title: "MedicationRequest Example"
Description: """Example of a MedicationRequest conforming to the MedicationRequest (CZ Core) profile.
It is a prescription/request with one medication and changing dosaging. Uses 'actionable' tag. Cefuroxime sodium."""
* meta.tag = $common-tags#actionable
* identifier.value = "10-123EP"  // prescription line identifier if exists
* status = #active
* intent = #order
* authoredOn = "2024-12-06"
* requester.display = "The Best Doctor"
* medicationReference = Reference(01A-Cefuroxime1500GenericExplicit)
* reasonCode = $sct#10625071000119104 "bronchopneumonie způsobená bakterií"
* subject = Reference(PatientExample)
* dosageInstruction[0]
  * sequence = 1
  * doseAndRate.doseQuantity = 1500 $ucum#mg "milligram(s)"
  * route.coding[0] = $edqm#20035000 "Intramuscular use"
  * route.coding[+] = $sct#78421000 "intramuskulární podání"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 3 $ucum#d "day"
* dosageInstruction[+]
  * sequence = 2
  * doseAndRate.doseRange.low = 750 $ucum#mg "milligram(s)"
  * doseAndRate.doseRange.high = 1500 $ucum#mg "milligram(s)"
  * route.coding[0] = $edqm#20035000 "Intramuscular use"
  * route.coding[+] = $sct#78421000 "intramuskulární podání"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 4 $ucum#d "day"

Instance: 01A-Cefuroxime1500GenericExplicit
InstanceOf: CZ_MedicationCore
Usage: #example
Title: "Medication Example"
Description: """Example of a Generic Medication conforming to the Medication (CZ Core) profile. It represents  Cefuroxime 1500mg (1.5g) powder for solution in a vial."""
* form.coding[+] = $edqm#50053500 //"Prášek pro injekční/infuzní roztok"
* ingredient.itemCodeableConcept = $CZ_DLPLecivelatkyCs#4709 "CEFUROXIM"
* ingredient.strength.numerator = 1500 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm#15060000 "Vial"
* extension.url = "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification"
* extension.valueCodeableConcept = $CZ_DLPATCCs#J01DC02 "cefuroxim"
* ingredient.isActive = true

Instance: example-medicationstatement-czcore
InstanceOf: CZ_MedicationStatementCore
Title: "MedicationStatement Example"
Description: """Example of a MedicationStatement conforming to the MedicationStatement (EU Core) profile. It describes a patient taking Enalapril."""
* subject = Reference(PatientExample)
* subject.display = "John Doe"
* medicationCodeableConcept = $DLPLecivepripravkyCs#0169879 "ENALAPRIL VITABALANS 20MG TBL NOB 100"
* medicationCodeableConcept.text = "Enalapril 20mg tablety"
* status = #active
* effectiveDateTime = "2024-12-01"
* dateAsserted = "2024-12-01"
* informationSource = Reference(PatientExample)
* informationSource.display = "Luigi De Luca"
* dosage[0].text = "Take one tablet daily in the morning"
* dosage[0].timing.repeat.frequency = 1
* dosage[0].timing.repeat.period = 1
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].route.coding[0].system = "http://snomed.info/sct"
* dosage[0].route.coding[0].code = #26643006
* dosage[0].route.coding[0].display = "perorální podání"
* dosage[0].route.coding[+].system = $edqm
* dosage[0].route.coding[=].code = #20053000
* dosage[0].route.coding[=].display = "Oral use"
* dosage[0].doseAndRate[0].doseQuantity.value = 20
* dosage[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosage[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosage[0].doseAndRate[0].doseQuantity.code = #mg
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><strong>Medication:</strong> Enalapril 20mg tablets</p>
  <p><strong>Patient:</strong> John Doe</p>
  <p><strong>Status:</strong> Active</p>
  <p><strong>Dosage:</strong> Take one tablet daily in the morning (oral route)</p>
  <p><strong>Informant:</strong> Luigi De Luca</p>
  <p><strong>Date Asserted:</strong> 2024-12-01</p>
</div>
"""
