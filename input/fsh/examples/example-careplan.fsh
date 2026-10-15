//----------------------------------------
Instance: CarePlan-Mracena
InstanceOf: CZ_CarePlanCore
Usage: #example
Title: "CarePlan-Mracena"
Description: "Complex care plan example"
* id = "CarePlan-Mracena"
* language = #cs
// Care plan details
* status = #active
* intent = #plan
//název
* title = "Plán péče – Mamografie"
//řeší (DG)
* addresses = Reference(cz-examplemamo-condition)
//popis doporučení
* description = "Plán péče zaměřený na histologické vyšetření z podezřelé léze. Vzorek tkáně odebrat pomocí UVAB."
* period.start = "2025-03-10T08:00:00+01:00"
* subject = Reference(Mracena)
// Activity detail
* activity[+].detail.kind = #CommunicationRequest
* activity[=].detail.description = "Pacientka se po odebrání vzorku dostaví na recepci, kde bude domluven termín semináře (seznámení s výsledkem)."
* activity[=].detail.status = #scheduled
* activity[+].detail.kind = #Appointment
* activity[=].detail.description = "Ultrazvuk pro odebrání vzorku pomocí UVAB"
* activity[=].detail.status = #scheduled