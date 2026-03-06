Profile: CZ_Encounter
Parent: Encounter
Id: cz-encounter
Title: "Encounter (CZ base)"
Description: "Czech base profile for encounter. "

* insert SetFmmandStatusRule ( 2, trial-use )

* status
* class
* text
* serviceProvider only Reference(CZ_OrganizationCore)


Profile: CZ_EncounterCore
Parent: CZ_Encounter
Id: cz-encounter-core
Title: "Encounter (CZ core)"
Description: "Czech base profile for encounter. "

* insert SetFmmandStatusRule ( 2, trial-use )

//* identifier 1..
* serviceProvider 1..1  // make service provider mandatory