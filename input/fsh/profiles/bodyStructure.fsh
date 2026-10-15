Profile: BodyStructureCzCore
Parent: BodyStructureEuCore
Id: BodyStructure-cz-core
Title: "Body Structure (CZ core)"
Description: """This profile represents the Body Structure resource by the Czech national interoperability project."""

// * ^publisher = "HL7 CZ"
// * ^version = "0.3.0"
// * ^experimental = false
// * . ^comment = ""
// * . ^short = "Czech National profile Body Structure"
// * . ^definition = "The BodyStructure resource contains details about the anatomical location of a specimen or body part. This profile specifies how the HL7 FHIR BodyStructure resource should be used for conveying commonly used concepts in the Czech context."

//* extension contains $bodyStructure-laterality-r5 named laterality 0..1
//* extension[laterality].valueCodeableConcept from $CZ_LateralityVs (preferred)
//* morphology from $hl7BodyStructure (preferred)
//* location from $hl7BodySite (preferred)
//* locationQualifier from $CZ_SiteQualifierVs (preferred)
//* image 0..0

* patient only Reference(CZ_PatientCore)
* extension[includedStructure].extension[structure].valueCodeableConcept from $hl7BodySite (required)
* extension[includedStructure].extension[laterality].valueCodeableConcept from $CZ_LateralityVs (required)
* extension[includedStructure].extension[qualifier].valueCodeableConcept from $CZ_SiteQualifierVs (required)
* morphology from $CZ_MorphologyVs (required)