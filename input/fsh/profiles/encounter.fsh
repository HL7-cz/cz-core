Profile: CZ_Encounter
Parent: Encounter
Id: cz-encounter
Title: "Encounter (CZ)"
Description: "Czech base profile for encounter. "

* insert SetFmmandStatusRule ( 0, draft )

//* identifier 1..
* status
* class
* text
* serviceProvider only Reference(CZ_OrganizationCore)


Profile: CZ_EncounterCore
Parent: CZ_Encounter
Id: cz-encounter-core
Title: "Encounter (CZ)"
Description: "Czech base profile for encounter. "

* insert SetFmmandStatusRule ( 0, draft )

//* identifier 1..
* status
* class
* text
* serviceProvider 1..1  // make service provider mandatory