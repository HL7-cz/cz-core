//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_Specimen
Parent:     Specimen
Id:         cz-specimen
Title:      "Specimen (CZ)"
Description: "Czech national profile defines how to represent Specimens in HL7 FHIR for the purpose of this guide."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* ^purpose = "Specimens are samples of material that may be:
\r\n• taken from a biological entity, living or dead
\r\n• taken from a physical object or environment
\r\nSome samples are biological and may contain one or more components including, but not limited to, cellular molecules, cells, tissues, organs, body fluids, embryos, and body excretions. The source of samples includes substances used for diagnostic and environmental testing. The focus of sample sources is on the process of collecting, maintaining, and processing the sample, as well as where the sample came from."
* . ^short = "Czech Specimen"
* . ^definition = "Czech national profile defines how to represent Specimens in HL7 FHIR."
* . ^comment = ""

* text.status = #empty
* identifier MS
* identifier ^definition = "Business identifier for specimen is RECOMMENDED to include when available."
* status MS
* type MS
* type ^definition = "The kind of material that forms the specimen. RECOMMENDED to include."
//* type from CZ_MikrobiologickeVzorkyDASTAVS (preferred)
* subject only Reference(Group or CZ_DeviceObserver or CZ_MedicalDevice or Substance or CZ_LocationCore or CZ_PatientCore)
* subject MS
* subject ^short = "In the initial iteration of the Czech interoperability project, this is CZ_PatientCore."
* receivedTime MS
* parent only Reference(CZ_Specimen)
* parent MS
* request MS
* collection
  * bodySite from $hl7BodySite (preferred)
    * ^comment = "If the specimen.type conveys information about the site the specimen has been collected from, then, if the bodySite is present, it shall be coherent with the type"
  * extension contains $bodySite-reference named bodySite 0..1
  * extension[bodySite].valueReference only Reference(BodyStructureCz)
  * collector only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore)
* processing.additive only Reference(Substance or CZ_SpecimenAdditiveSubstance)
* container
  * type from SpecimenContainerCz (preferred)
  * additive[x] 0..0
  * extension contains $specimen-container-device-r5 named device 0..1
  * extension[device].valueReference only Reference(CZ_MedicalDevice)
* processing ^short = "Processing and processing step details to include when not implicit from specimen."
* condition MS
* note MS

/*
* extension contains
  $material named material 0..1 and
  $instrument named instrument 0..1 and
  $source-device named sourceDevice 0..1 and
  $sampling-point named samplingPoint 0..1 and
  $additional-data named additionalData 0..1

* extension[material]
  * ^short = "Material"
  * ^definition = "Specimen material from NCLPMAT"
* extension[material].value[x] from NCLPMatCzVs
* extension[instrument]
  * ^short = "Instrument"
  * ^definition = "Device, instrument, physical object (drain, electrode, catheter, etc.). from SNOMED CT"
* extension[instrument].value[x] from InstrumentCzVs
* extension[sourceDevice]
  * ^short = "Source Device"
  * ^definition = "if the specimen is not collected directly from the patient but comes from a patient-related object, e.g. a catheter from EMDN"
* extension[sourceDevice].value[x] from EMDNCzVs
* extension[samplingPoint]
  * ^short = "Sampling Point"
  * ^definition = "The area where the material was collected; refers to the environment, not the patient."
* extension[samplingPoint].value[x] from SpecimenSamplingPointCzVs
* extension[additionalData]
  * ^short = "Additional Data"
  * ^definition = "Additional formalised sample data"
*/


// ----------------------------------------

Profile: CZ_SpecimenAdditiveSubstance
Parent: Substance
Id: Substance-additive-cz
Title: "Substance:SpecimenAdditiveSubstance (CZ)"
Description: """This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide."""
* code from SpecimenAdditiveCz (preferred)