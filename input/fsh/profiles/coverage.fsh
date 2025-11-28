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
* . ^definition = "This profile presents the requirements for the Coverage resource within the Czech national interoperability project. Coverage is intended to provide identifiers for information that would appear on an insured person's card, which can be used for partial or full reimbursement for the provision of healthcare products and services. At the same time, this resource can also be used to register \"self-payers,\" where the individual or organization are different from the insurer and assumes responsibility for paying some or all of the health care costs."

* insert SetFmmandStatusRule ( 0, draft )

//* type MS
//* type.coding from $hl7CoverageType
* type.coding from $CZ_CoverageTypeVS
* identifier 0..*
  * ^short = "Business identifier of the coverage. In the event of payment by an insurance company, enter the insurance assignment number (also known as Číslo pojistné smlouvy)."

* beneficiary only Reference(CZ_PatientCore)
* payor only Reference(CZ_PatientCore or CZ_OrganizationCore or CZ_RelatedPersonCore)
  * ^short = "Information about the payor of the treatment. This  could be an insurance company, a patient, a related person of patient or an another organisation."
* policyHolder only Reference(CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
* subscriber only Reference(CZ_PatientCore or CZ_RelatedPersonCore)
* subscriberId
  * ^short = "Identifier of the subscriber (patient or related person). In the event of payment by an insurance company, enter the insured person's number (also known as Číslo pojištěnce)."
* costToBeneficiary
  * ^short = "Information about the extra costs that are paid for by the payor (also known as Samoplátce)."