//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_LocationCore
Parent:     CZ_LocationBase
Id:         cz-location-core
Title:      "Location (CZ core)"
Description: "Czech national core profile for location resource.This profile implies use of the Czech standard organization in the managingOrganization element."
//-------------------------------------------------------------------------------------------
* ^publisher = "HL7 CZ"
* ^version = "0.3.0"
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech location"
* . ^definition = "Czech national core profile for location resource."
* insert SetFmmandStatusRule (1, draft)
* managingOrganization only Reference(CZ_OrganizationCore)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_LocationBase
Parent:     Location
Id:         cz-location-base
Title:      "Location (CZ base)"
Description: "Czech national base profile for location resource. This profile implies use of the Czech standard address in the location resource."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech location"
* . ^definition = "Czech national base profile for location resource."
* insert SetFmmandStatusRule (1, draft)

//* physicalType ^short = "Location type"
//* name ^short = "Location name"
//* telecom ^short = "Location telecom"
* managingOrganization only Reference(CZ_OrganizationBase)
* partOf only Reference(CZ_LocationCore)
* address only CZ_Address