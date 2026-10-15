//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CZ_MedicationRequestMpd
Parent:   CZ_MedicationRequestCore
Id:       medicationRequest-cz-mpd
Title:    "MedicationRequest (HDR MPD)"
Description: "This profile constrains the MedicationRequest resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (2, trial-use)
* insert ImposeProfile($medicationrequest-eu-mpd, 0)
