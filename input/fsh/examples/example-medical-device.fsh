Instance: Pacemaker
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Heart pacemaker Bostn Scientific W1DR01 PG ACCOLADE MRI DR EL L331"

* udiCarrier[0].deviceIdentifier = "00802526559273"  // UDI-DI (Device Identifier)
* udiCarrier[0].issuer = "http://hl7.org/fhir/NamingSystem/gs1-di"
* udiCarrier[0].carrierHRF = "(01)00802526559273(17)250914(21)701120"  // Human Readable Form of UDI as present on the device label
* manufacturer = "Boston Scientific"
* serialNumber = "701120"
* deviceName[0].name = "PG ACCOLADE MRI DR EL L331"
* deviceName[0].type = #model-name
* expirationDate = "2025-09-14"
* type = $sct#14106009 "kardiostimulátor"
* patient = Reference(Mracena) "Pokusný Pacient"


Instance: AbsentDevice
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Patient without medical device"

* type = $absent-unknown-uv-ips#no-known-devices "No known devices in use"
* patient = Reference(Mracena) "Pokusný Pacient"

Instance: NoInformationAboutDevice
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Patient with unknown presence or use of medical device"

* type = $absent-unknown-uv-ips#no-device-info "No information about devices"
* patient = Reference(Mracena) "Pokusný Pacient"
