Profile: CZ_CLK_Identifier
Parent: Identifier
Id: cz-clk-identifier
Title: "Czech medical chamber identifier"
Description: "This structure contains the identifier assigned by the Czech medical chamber to a physician."
* insert SetFmmandStatusRule( 2, trial-use )
* use = #official (exactly)
* system 1..1
* system = "https://ncez.mzcr.cz/fhir/sid/clk" (exactly)
* value 1..1
  // * ^maxLength = 10
* ^experimental = false
* ^purpose = "This unique identifier is assigned by the Czech Medical Chamber (ČLK) to a given medical practitioner (physician). The number may not be reused."
* . ^short = "Czech Medical Chamber identifier"
* . ^definition = "Czech Medical Chamber identifier is a unique identifier of the registered medical practitioner."

* assigner only Reference(CZ_OrganizationCore)

Profile: CZ_CLEK_Identifier
Parent: Identifier
Id: cz-clek-identifier
Title: "Czech Chamber of Pharmacists identifier"
Description: "This structure contains the identifier assigned by the Czech Chamber of Pharmacists to a pharmacist."
* insert SetFmmandStatusRule( 2, trial-use )
* use = #official (exactly)
* system 1..1
* system = "https://ncez.mzcr.cz/fhir/sid/clek" (exactly)
* value 1..1
  // * ^maxLength = 10
* ^experimental = false
* ^purpose = "This unique identifier is assigned by the Czech Chamber of Pharmacists (ČLeK) to a given pharmacist. The number may not be reused."
* . ^short = "Czech Chamber of Pharmacists identifier"
* . ^definition = "Czech Chamber of Pharmacists identifier is a unique identifier of the registered pharmacist."

* assigner only Reference(CZ_OrganizationCore)

Profile: CZ_KRZP_Identifier
Parent: Identifier
Id: cz-krzp-identifier
Title: "Czech national identifier of a health practitioner"
Description: "This structure contains the identifier assigned by the National registry of health practitioners."
* insert SetFmmandStatusRule( 2, trial-use )
* use = #official (exactly)
* system 1..1
* system = "https://ncez.mzcr.cz/fhir/sid/krzp" (exactly)
* value 1..1
  // * ^maxLength = 10
* ^experimental = false
* ^purpose = "This unique identifier is assigned by the National Registry of Health Practitioners (KRZP) to a given practitioner. The number is unique and may not be reused."
* . ^short = "Czech national health practitioner identifier"
* . ^definition = "Czech national health practitioner identifier is a unique identifier of the registered health practitioner. It is used as a preferred identifier in the healthcare sector."

* assigner only Reference(CZ_OrganizationCore)
