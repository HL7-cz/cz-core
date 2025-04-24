//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_Signature
Parent:     Signature
Id:         cz-signature
Title:      "Signature (CZ)"
Description: "Czech national profile on Signature holds an electronic representation of a signature or timestamp and its supporting context in a FHIR accessible form."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* . ^short = "Signature according to Czech conventions"
* . ^definition = "Signature according to Czech conventions. The type determines whether it is a signature or a timestamp."
* insert SetFmmandStatusRule ( 1, draft )

* type MS
* type ^definition = "The kind of signature that determines whether it is a signature or a timestamp. RECOMMENDED to include."

* when MS
* who MS
* who only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_RelatedPersonCore or CZ_DeviceObserver or CZ_MedicalDevice or CZ_OrganizationCore or CZ_PatientCore)

* targetFormat
* sigFormat
* data MS
* obeys data-must-be

Invariant: data-must-be
Description: "Signature must contain data, author and date"
Expression: "data.exists() and who.exists() and when.exists()"
Severity:    #error