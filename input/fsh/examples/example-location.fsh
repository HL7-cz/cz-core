Instance: location-laboratory
InstanceOf: CZ_LocationCore
Title: "Location of laboratory"
Usage: #example
Description: "Czech national core profile for location resource.This profile implies use of the Czech standard organization in the managingOrganization element."
* name = "Laboratoř Praha, Jankovcova 2"
* status = #active
* type.text = "Laboratory"
* managingOrganization = Reference(Synlab) "Synlab"
* address.line[0] = "Jankovcova 2"
* address.line[1] = "Praha 7"
* address.city = "Praha"
* address.postalCode = "17000"
* address.country = "Česká republika"


Instance: location-base-example
InstanceOf: CZ_LocationBase
Title: "Location base example"
Usage: #example
Description: "Example of Czech national base profile for location resource. This profile implies use of the Czech standard address in the location resource."

* name = "A location example name"
* status = #active
* managingOrganization.display = "An organization managing the location example name"
