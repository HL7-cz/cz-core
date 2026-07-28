Instance: Practitioner-lab
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner id(KRZP)=987114321"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987114321"
* identifier[CLK].system = "https://ncez.mzcr.cz/fhir/sid/clk"
* identifier[CLK].value = "4567891230"
* identifier[CLK].use = #official
* name.use = #usual
//* name.prefix = "MUDr."
* name.family = "Laboratorní"
* name.given = "Technik"

* gender = #male
