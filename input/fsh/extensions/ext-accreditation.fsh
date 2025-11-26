Extension: AccreditationCz
Id: accreditation-cz
Title: "Accreditation Requirement"
Description: "Indicates whether the examination must be performed only by a laboratory accredited for the specific test, or whether the result originates from such a laboratory."
 
* valueBoolean 1..1
* valueBoolean ^short = "Accreditation required or confirmed"
 
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
 
* ^context[1].type = #element
* ^context[1].expression = "Observation"
 
* ^purpose = "This extension is used to specify or confirm that a laboratory test is required to be, or was, performed by an accredited laboratory."
* ^publisher = "HL7 Czech Republic"