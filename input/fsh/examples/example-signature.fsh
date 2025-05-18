Instance: signature-rentgen
InstanceOf: CZ_Provenance
Title: "Signature of image order"
Usage: #example
Description: "Czech national profile on Signature holds an electronic representation of a signature or timestamp and its supporting context in a FHIR accessible form."
* target.identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* target.identifier[=].value = "27520536"
* target.display = "Reference(ServiceRequest/Image-order) Rentgen"
* recorded = "2023-04-05T17:23:07Z"
* agent.role = $v3-ParticipationType#AUT
* agent.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2023-04-05T17:23:07Z"
* signature.who.identifier[+].system = "http://example.org/exampleSystem"
* signature.who.identifier[=].value = "MUDr. Hana Doktorová"
* signature.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.targetFormat = #application/fhir+xml
* signature.sigFormat = #application/signature+xml
* signature.data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="