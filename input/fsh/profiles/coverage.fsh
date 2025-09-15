//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_Coverage
Parent:     Coverage
Id:         cz-coverage
Title:      "Coverage (CZ)"
Description: "Czech national profile for a coverage."
//-------------------------------------------------------------------------------------------
* ^experimental = false

* . ^comment = ""
* . ^short = "Czech coverage"
* . ^definition = "This profile represents the requirements for the Coverage resource within the Czech national interoperability project. It is made for fill in information about insurance company, payor of cure and additional payments."

* insert SetFmmandStatusRule ( 0, draft )

* type MS
* type.coding from $hl7CoverageType

* identifier 0..* 
  * ^short = "Business Identifier of the Coverage, in case of payment by insurance company, fill in the number of insurance assigment (a.k.a Číslo pojistné smlouvy)"

* beneficiary only Reference(CZ_PatientCore)
* payor only Reference(CZ_PatientCore or CZ_OrganizationCore or CZ_RelatedPersonCore)
  * ^short = "Information about the payor of a cure. It could be an insurance company, a patient, a related person of patient or an another organisation."
* policyHolder only Reference(CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
* subscriber only Reference(CZ_PatientCore or CZ_RelatedPersonCore)
* subscriberId 
  * ^short = "Identifier of the subcriber (patient or relatedPerson), in case of payment by insurance company, fill in the insured person's number (a.k.a Číslo pojištěnce)"
* costToBeneficiary 
  * ^short = "Information about the coverage made by patient (a.k.a Samoplátce)"