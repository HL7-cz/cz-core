Profile: CZ_PatientAnimal
Parent: Patient
Id: cz-patient-animal
Title:    "Patient: Animal (CZ)"
Description: "This profile defines how to represent an Animal as subject of care in FHIR for the purpose of this guide.
This is used to identify the species when a specimen is collected from an animal"
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Animal Patient"
* . ^definition = "This profile defines how to represent Animal Patient in FHIR for the purpose of the Czech national interoperability standards."

* insert SetFmmandStatusRule ( 1, draft )
* extension contains $patient-animal named patient-animal 1..1
* extension[patient-animal].extension[species]
* extension contains $recordedSexOrGender named recordedSexOrGender 0..1
* extension[recordedSexOrGender]

* telecom ..0
  * ^short = "Usage: contact.telecom"
  * ^comment = "Animals do not have phones, their contacts do. Contact.telecom should be used."
* maritalStatus ..0

* contact.organization only Reference(CZ_OrganizationCore)
* generalPractitioner only Reference(CZ_OrganizationCore or CZ_PractitionerCore or CZ_PractitionerRoleCore)
* managingOrganization only Reference(CZ_OrganizationCore)
* link.other only Reference(CZ_PatientCore or CZ_RelatedPersonCore)