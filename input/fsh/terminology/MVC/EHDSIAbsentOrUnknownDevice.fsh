// -------------------------------------------------------------------------------
//  Value Set. File: 					eHDSIAbsentOrUnknownDevice.fsh
// -------------------------------------------------------------------------------
ValueSet: EHDSIAbsentOrUnknownDevice
Id: eHDSIAbsentOrUnknownDevice
Title: "eHDSI Absent Or Unknown Device"
Description: "The Value set is used to encode absent or unknown medical devices."
* ^experimental = false
* ^language = #cs

//* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID (1.3.6.1.4.1.12559.11.10.1.3.1.42.48)
* insert setUrl ( eHDSIAbsentOrUnknownDevice )

* $absent-unknown-uv-ips#no-device-info "žádné informace o zdravotních přístrojích a implantátech"
* $absent-unknown-uv-ips#no-known-devices "žádné implantáty či zdravotní přístroje"