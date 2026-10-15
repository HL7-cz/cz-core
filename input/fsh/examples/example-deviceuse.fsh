Instance: DeviceUseStatementExample
InstanceOf: CZ_DeviceUseStatementCore
Usage: #example
Description: "Device use example: a patient is using a blood pressure monitor at home."

* status = #active
* device = Reference(BloodPressureMonitor) "Blood Pressure Monitor"
* subject = Reference(PatientExample) "John Doe"
* recordedOn = "2025-05-20T10:00:00+02:00"
* reasonCode.text = "Monitoring blood pressure at home"


Instance: BloodPressureMonitor
InstanceOf: CZ_MedicalDevice
Title: "Blood Pressure Monitor"
Description: "Example of a blood pressure monitor device."
* type.text = "Blood Pressure Monitor"
* manufacturer = "HealthTech Inc."
* modelNumber = "BP-1000"
* version.value = "1.0"
* status = #active

Instance: PatientExample
InstanceOf: CZ_PatientCore
Title: "Patient Example"
Description: "Example patient for device use example."
* identifier[RID].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID].value = "1234567890"
* identifier[RID].use = #official
* name[0].family = "Doe"
* name[0].given[0] = "John"
* gender = #male
* birthDate = "1980-01-01"
