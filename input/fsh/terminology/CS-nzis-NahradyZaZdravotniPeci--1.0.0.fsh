CodeSystem: NahradyZaZdravotniPeci
Id: nzis-NahradyZaZdravotniPeci
Title: "NahradyZaZdravotniPeci"
Description: "Číselník použitý v NRHOSP"
* ^language = #cs
// * ^extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/web-source"
// * ^extension[=].valueUrl = "https://termx-npez.gov.cz//fhir/CodeSystem/nzis-NahradyZaZdravotniPeci"
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeRepresentationLevel"
// * ^extension[=].valueCode = #executable
* ^url = "https://uzis.cz/terminology/CodeSystem/nzis-NahradyZaZdravotniPeci"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "Institute of Health Information and Statistics of the Czech Republic"
//* ^effectivePeriod.start = "2025-11-05T00:00:00Z"
* ^caseSensitive = false
* ^content = #complete
* ^property[0].code = #definition
* ^property[=].description = "Definition"
* ^property[=].type = #string
//* ^property[+].code = #display
//* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/designation-usage|display"
//* ^property[=].description = "Display"
//* ^property[=].type = #string
* ^property[+].code = #kod
* ^property[=].type = #string
* ^property[+].code = #plati_do
* ^property[=].type = #dateTime
* ^property[+].code = #plati_od
* ^property[=].type = #dateTime
* ^property[+].code = #popis
* ^property[=].type = #string
* ^property[+].code = #poradi
* ^property[=].type = #string
* ^property[+].code = #skupina_platnosti_01
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_02
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_03
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_04
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_05
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_06
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_07
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_08
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_09
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_10
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_11
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_12
* ^property[=].type = #boolean
* ^property[+].code = #skupina_platnosti_13
* ^property[=].type = #boolean
* #3 "Úraz zaviněný jinou osobou"
* #3 ^property[0].code = #kod
* #3 ^property[=].valueString = "3"
* #3 ^property[+].code = #plati_od
* #3 ^property[=].valueDateTime = "2015-01-01T00:00:00Z"
* #3 ^property[+].code = #popis
* #3 ^property[=].valueString = "Úraz zaviněný jinou osobou"
* #4 "Alkohol, omamné látky"
* #4 ^property[0].code = #kod
* #4 ^property[=].valueString = "4"
* #4 ^property[+].code = #plati_od
* #4 ^property[=].valueDateTime = "2015-01-01T00:00:00Z"
* #4 ^property[+].code = #popis
* #4 ^property[=].valueString = "Alkohol, omamné látky"
* #5 "Pracovní úraz"
* #5 ^property[0].code = #kod
* #5 ^property[=].valueString = "5"
* #5 ^property[+].code = #plati_od
* #5 ^property[=].valueDateTime = "2015-01-01T00:00:00Z"
* #5 ^property[+].code = #popis
* #5 ^property[=].valueString = "Pracovní úraz"
* #6 "Sociální důvod hospitalizace"
* #6 ^property[0].code = #kod
* #6 ^property[=].valueString = "6"
* #6 ^property[+].code = #plati_od
* #6 ^property[=].valueDateTime = "2015-01-01T00:00:00Z"
* #6 ^property[+].code = #popis
* #6 ^property[=].valueString = "Sociální důvod hospitalizace"
* #7 "Porušení léčebného režimu"
* #7 ^property[0].code = #kod
* #7 ^property[=].valueString = "7"
* #7 ^property[+].code = #plati_od
* #7 ^property[=].valueDateTime = "2015-01-01T00:00:00Z"
* #7 ^property[+].code = #popis
* #7 ^property[=].valueString = "Porušení léčebného režimu"
* #9 "Nemoc z povolání"
* #9 ^property[0].code = #kod
* #9 ^property[=].valueString = "9"
* #9 ^property[+].code = #plati_od
* #9 ^property[=].valueDateTime = "2015-01-01T00:00:00Z"
* #9 ^property[+].code = #popis
* #9 ^property[=].valueString = "Nemoc z povolání"