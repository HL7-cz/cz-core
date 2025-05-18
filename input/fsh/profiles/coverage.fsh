//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_Coverage
Parent:     Coverage
Id:         cz-coverage
Title:      "Coverage"
Description: "Czech national profile for a coverage.The coverage is intended to provide identifiers of information that would appear on an insured card that can be used to partially or fully pay for the provision of healthcare products and services. At the same time, this resource can also be used to register for “SelfPay,” where an individual or organization other than the insurer assumes responsibility for paying part or all of the healthcare costs."
//-------------------------------------------------------------------------------------------
* ^experimental = false

* . ^comment = ""
* . ^short = "Czech coverage"
* . ^definition = "This profile represents the requirements for the Coverage resource within the Czech national interoperability project."

* insert SetFmmandStatusRule ( 0, draft )

* type MS
* type.coding from $hl7CoverageType

* beneficiary only Reference(CZ_PatientCore)
* payor only Reference(CZ_PatientCore or CZ_OrganizationCore)