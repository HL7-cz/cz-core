//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_PatientCore
Parent:   CZ_PatientBase
Id:       cz-patient-core
Title:    "Patient (CZ core)"
Description: "This profile sets minimum expectations for the Patient resource common to most of the use cases. It is based on EU Patient Core."

//* ^description = "This profile sets minimum expectations for the Patient resource common to most of the use cases. It is based on EU Patient Core."
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Patient (base)"
* . ^definition = "This profile sets minimum expectations for represention of Patient in FHIR for the purpose of the Czech national interoperability standards."
* insert SetFmmandStatusRule ( 1, draft )
* insert ImposeProfile($Patient-eu-core, 0)

//* language = urn:ietf:bcp:47#cs
* extension contains
  $registering-provider named registeringProvider 0..
* extension[registeringProvider]
  * ^short = "Registering primary outpatient healthcare provider"
  * ^definition = "A registering provider means an ambulatory care provider in the field of general practice medicine, in the field of practice medicine for children and adolescents, in the field of dentistry or in the field of gynecology and obstetrics, who accepted a patient for the purpose of providing primary ambulatory care."
  * ^comment = "At any one time, a patient may have no more than one general practitioner or paediatric and adolescent practitioner and one dental registrar. Female patients may also have no more than one registered provider in gynaecology and obstetrics."
* obeys cz-pat-2
* identifier 1..* //at least one identifier is required
* identifier[RID] 1..1  // national health identifier is required
* identifier obeys cz-pat-3
* name 1..* //MS  // patient name element must be provided
* name obeys cz-pat-1
* name.given ^min = 1
* birthDate.extension contains $data-absent-reason named dob-absent-reason 0..1
* birthDate.extension[dob-absent-reason] ^short = "Reason for not providing the Date of Birth."
* birthDate.extension[dob-absent-reason] ^definition = "Reason for not providing the Date of Birth."


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Invariant: cz-pat-1
Description: "Patient.name.given, Patient.name.family, Patient.name.text or data-absent-reason MUST be filled"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"

Invariant: cz-pat-2
Description: "A patient can have only one registering physician of a given type"
Severity: #error
Expression: "extension('https://hl7.cz/fhir/core/StructureDefinition/registering-provider-cz').extension('category').isDistinct()"

Invariant: cz-pat-3
Description: "Patient.identifier[OP] MUST has only one with use=official"
Severity: #error
Expression: "where($this is OP and use='official').count() <= 1"
