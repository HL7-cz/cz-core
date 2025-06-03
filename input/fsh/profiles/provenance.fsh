//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_Provenance
Parent:     Provenance
Id:         cz-provenance
Title:      "Provenance (CZ)"
Description: "Czech national profile on Provenance tracks information about the activity that created, revised, deleted, or signed a version of a resource, describing the entities and agents involved."
//-------------------------------------------------------------------------------------------
* agent MS
* target MS

* signature 0..1 MS
* signature only CZ_Signature

* location only Reference(CZ_LocationCore)
* agent.who only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_RelatedPersonCore or CZ_PatientCore or CZ_DeviceObserver or CZ_MedicalDevice or CZ_OrganizationCore)
* agent.onBehalfOf only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_RelatedPersonCore or CZ_PatientCore or CZ_DeviceObserver or CZ_MedicalDevice or CZ_OrganizationCore)
