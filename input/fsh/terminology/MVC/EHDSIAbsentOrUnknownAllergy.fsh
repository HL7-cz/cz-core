// -------------------------------------------------------------------------------
//  Value Set. File: 					eHDSIAbsentOrUnknownDevice.fsh
// -------------------------------------------------------------------------------
ValueSet: EHDSIAbsentOrUnknownAllergy
Id: eHDSIAbsentOrUnknownAllergy
Title: "eHDSI Absent Or Unknown Allergy"
Description: "The Value set is used to encode absent or unknown medical allergies."
* ^experimental = false
* ^language = #cs

//* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID (1.3.6.1.4.1.12559.11.10.1.3.1.42.47)
* insert setUrl ( eHDSIAbsentOrUnknownAllergy )

* $absent-unknown-uv-ips#no-allergy-info "žádné informace o alergiích"
* $absent-unknown-uv-ips#no-known-allergies "žádné známé alergie"
* $absent-unknown-uv-ips#no-known-medication-allergies "žádné známé alergie na léky"
* $absent-unknown-uv-ips#no-known-environmental-allergies "žádné známé alergie na vnější prostředí"
* $absent-unknown-uv-ips#no-known-food-allergies "žádné známé alergie na potraviny"