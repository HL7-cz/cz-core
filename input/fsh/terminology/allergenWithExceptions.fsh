// -------------------------------------------------------------------------------
//  Value Set. File: 	allergenWithExceptions.fsh
// -------------------------------------------------------------------------------
ValueSet: AllergenWithExceptions
Id: AllergenWithExceptions
Title: "eHDSI Agent or Allergen With Exceptions"
Description: "The Value Set is used for coding s specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity.
It is defined as the union of:
(a) eHDSIAllergenNoDrug
(b) DLP_lecivePripravky
(c) DLP_ATC
(d) eHDSIAbsentOrUnknownAllergy
(e) eHDSIExceptionalValue"

* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset EHDSIAllergenNoDrug
* codes from valueset dlplecive-pripravky-vs
* codes from valueset cz-dlpatc-vs
* codes from valueset EHDSIAbsentOrUnknownAllergy
* codes from valueset EHDSIExceptionalValue