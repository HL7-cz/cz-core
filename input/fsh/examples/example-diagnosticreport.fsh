Instance: DiagnosticReportPerformerExample
InstanceOf: CZ_DiagnosticReportCore
Usage: #example
Title: "DiagnosticReport Example - performer types"
Description: "Simple DiagnosticReport testing the performer and resultsInterpreter slicing: performer contains a Practitioner, a PractitionerRole and an Organization, resultsInterpreter a Practitioner."
* id = "b7d3c2a1-4e5f-4a6b-8c9d-0e1f2a3b4c5d"
* status = #final
* category[+] = $loinc#18719-5 //"Chemistry studies (set)"
* code = $loinc#11502-2 //"Laboratory report"
* subject = Reference(Mracena)
* effectiveDateTime = "2026-10-15T08:00:00+02:00"
* issued = "2026-10-15T10:00:00+02:00"
// Practitioner - outside the "organization" slice (this is what currently fails)
* performer[+] = Reference(Practitioner-lab)
// PractitionerRole - outside the "organization" slice
* performer[+] = Reference(practitionerroleLab)
// Organization - matches performer[organization]
* performer[+] = Reference(Organization-1)
// Practitioner - outside the "author" slice (author allows only PractitionerRole)
* resultsInterpreter[+] = Reference(Practitioner-123456789)
* result[+] = Reference(ObservationLabResultExample)
* conclusion = "Výsledek v mezích referenčního rozmezí."