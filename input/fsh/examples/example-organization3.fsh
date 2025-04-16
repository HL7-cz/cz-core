Instance: Organization-3
InstanceOf: cz-organization-core
Usage: #example
Description: "An example of the organization of a health insurance"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[=].value = "111"
//* type[+] = $hl7OrganizationType#ins "Insurance Company"
* name = "Všeobecná zdravotní pojišťovna ČR"


