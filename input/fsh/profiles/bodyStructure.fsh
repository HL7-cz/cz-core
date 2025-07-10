Profile: BodyStructureCz
Parent: BodyStructure
Id: BodyStructure-cz
Title: "Body Structure (CZ)"
Description: """This profile represents the Body Structure resource by the Czech national interoperability project."""

* ^publisher = "HL7 CZ"
* ^version = "0.3.0"
* ^experimental = false
* . ^comment = ""
* . ^short = "Czech Body Structure"
* . ^definition = "This profile represents the Body Structure resource by the Czech national interoperability project.The BodyStructure resource contains details about the anatomical location of a specimen or body part, including patient information, identifiers, as well as text descriptions and images. It provides for the addition of qualifiers such as laterality and directionality to the anatomic location for those use cases where precoordination of codes is not possible."

* extension contains $bodyStructure-laterality-r5 named laterality 0..1
* extension[laterality].valueCodeableConcept from CZ_LateralityVs (preferred)
* morphology from $hl7BodyStructure (preferred)
* location from $hl7BodySite (preferred)
* locationQualifier from CZ_SiteQualifierVs (preferred)
* image 0..0

* patient only Reference(CZ_PatientCore)