Profile: CZ_ConditionCore
Parent: Condition
Id: cz-condition-core
Title: "Condition (CZ core)"
Description: """This profile introduces essential constraints and extensions for the Condition resource that apply across multiple use cases."""
// * insert ImposeProfile ( $Condition-uv-ips, 0 )  // Check if this is appropriate (see MS support)
// follow the same apporach of lab for collection or add laterality to the bodySite ?
* insert SetFmmandStatusRule ( 2, trial-use )
* extension contains $condition-assertedDate named assertedDate 0..1
* extension[assertedDate].valueDateTime ^short = "Date and time of the diagnosis assertion"
* extension contains $artifact-relatedArtifact named relatedArtifact 0..*
* extension[relatedArtifact] // reference to an external documet (e.g. a guideline for this condition)
* category ^short = "Category" // to be updated
* severity from $condition-severity (preferred)
* asserter ^short = "Who asserted the condition"
* language ^short = "Language of the condition content"
* code 1..1
* code from $condition-cz (preferred)
  * ^definition = "The problem code specifies the kind of a problem. Depending on the setting, different code systems can be used. The ProblemCodelist provides an overview of the possible code systems."
  * ^binding.description = "Valueset to describe the actual problem experienced by the patient"
  // * ^binding.extension[+].extension[0].url = "purpose"
  // * ^binding.extension[=].extension[=].valueCode = #preferred
  // * ^binding.extension[=].extension[+].url = "valueSet"
  // * ^binding.extension[=].extension[=].valueCanonical = "https://uzis.cz/terminology/ValueSet/mkn-10"
  // * ^binding.extension[=].extension[+].url = "documentation"
  // * ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a problem code when ICD-10 or Orphanet codes are used."
  // * ^binding.extension[=].extension[+].url = "shortDoco"
  // * ^binding.extension[=].extension[=].valueString = "For cross border data exchange"
  // * ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  // * ^binding.description = "Valueset to describe the actual problem experienced by the patient"
* bodySite from SNOMEDCTBodyStructures (preferred)
  * extension contains $bodySite-reference named bodySite 0..1
  * extension[bodySite].valueReference only Reference(BodyStructureCz)
* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* text ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."
//* clinicalStatus only $CodeableConcept-uv-ips  // to be removed?
* clinicalStatus from ConditionClinicalStatusCodes (required)
  * ^definition = "The problem status describes the condition of the problem:\n\r
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
//* verificationStatus only $CodeableConcept-uv-ips // to be removed?
* verificationStatus from ConditionVerificationStatus (required)
  * ^definition = "The verification status to support the clinical status of the condition."
* subject only Reference(CZ_PatientCore)
* subject.reference 1..
* onset[x] only dateTime or Age or Period or Range or string
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."
* abatement[x] only dateTime or Age or Period or Range or string
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"
* recorder only Reference (PractitionerRoleEu or PractitionerEu or PatientEuCore or RelatedPerson)
* recordedDate ^short = "Date when the condition record was created"
* stage ^short = "Stage/grade"
* stage.summary  ^short = "Most recent Stage Group"
* stage.assessment ^definition = "Reference to the evidence on which the staging assessment is based."
* stage.type ^short = "Staging system used."
* note ^definition = "Comment by the one who determined or updated the Problem."

/*
* stage.assessment only Reference(CancerStageGroupHdrXpandh)
* stage.summary from CancerStageGradingVS
  * ^short = "Most recent Stage Group"
  * ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the stage group MAY appear in this element, copied from the CancerStageGroup, but Data Senders and Receivers MAY ignore it."

* stage.type ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the staging system MAY appear in this element, but Data Senders and Receivers MAY ignore it."
*/
