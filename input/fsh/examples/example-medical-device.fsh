Instance: Pacemaker
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Heart pacemaker Medtronic W1DR01"

* manufacturer = "Medtronic"
* modelNumber = "W1DR01"
* type = $sctCZ#14106009 "Cardiac pacemaker"
* patient = Reference(Patient/Mracena) "Pokusný Pacient"


Instance: AbsentDevice
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Patient without medical device"

* type = $absent-unknown-uv-ips#no-known-devices "No known devices in use"
* patient = Reference(Patient/Mracena) "Pokusný Pacient"

Instance: NoInformationAboutDevice
InstanceOf: CZ_MedicalDevice
Usage: #example
Description: "Patient with unknown presence or use of medical device"

* type = $absent-unknown-uv-ips#no-device-info "No information about devices"
* patient = Reference(Patient/Mracena) "Pokusný Pacient"
