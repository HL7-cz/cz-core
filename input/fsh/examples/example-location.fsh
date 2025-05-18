Instance: location-laboratory
InstanceOf: CZ_LocationCore
Title: "Location of laboratory"
Usage: #example
Description: "Czech national core profile for location resource.This profile implies use of the Czech standard organization in the managingOrganization element."
* name = "Laboratoř Praha, Jankovcova 2"
* status = #active
* type.text = "Laboratory"
* managingOrganization = Reference(Organization/Synlab) "Synlab"

Instance: Synlab
InstanceOf: CZ_OrganizationCore
Title: "Organization of laboratory"
Usage: #example
Description: "Czech national core profile for organization resource. This example represents separate professional laboratory"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "49688804"
* type[DRZAR] = $drzar#361 "Samostatná odborná laboratoř"
* name = "Synlab czech s.r.o."