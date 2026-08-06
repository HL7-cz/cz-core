Profile: CZ_DiagnosticReportCore
Parent: DiagnosticReportEuCore
Id: diagnosticReport-cz-core
Title:    "DiagnosticReport (CZ core)"
Description: """This profile introduces essential constraints and extensions for the DiagnosticReport resource that apply across multiple use cases."""
* insert SetFmmandStatusRule ( 2, trial-use )
* . ^short = "Diagnostic Report CZ core"
* . ^definition = "Diagnostic Report CZ core profile"
// * effectivePeriod ^short = "Effective period of the report"
// * issued ^short = "Date and time this report was issued"
// * language ^short = "Language of the diagnostic report content"
//* extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 0..1
// is 1.. in Lab and Imaging report
// * extension[DiagnosticReportCompositionR5]
//   * ^short = "Associated  Composition"
//   * ^definition = "This extension implements the R5 composition element. It allow to link this DiagnosticReport with the Composition documenting this Diagnostic Report."
//   *  valueReference 1..1
//   *  valueReference only Reference(CompositionEuCore)
// * basedOn ^short = "What was requested"
// * status ^short = "Status of the Report"
// * identifier
//   * ^comment = "Usually assigned by the Information System of the diagnostic service provider for facilitating the Report search. The order id can be used as one of the Report identifier if only one report is produced for that order."
// * status
//   * ^short = "Status of the Report"
//   * ^comment = "DiagnosticReport.status and Composition.status shall be aligned"
// * extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.note named note 0..*
// * extension[note].valueAnnotation.extension contains $annotation-type named annotation-type 0..*
// * extension[note].valueAnnotation.extension[annotation-type].valueCodeableConcept ^short = "Type of note"
/* See FHIR-55541
* category insert SliceElement( #value, $this )
* category contains diagnostic-service 0..1
// to be checked with the EU Core working group
* category[diagnostic-service] from $diagnostic-service-sections (required)
*/
// * code
//   * ^short = "Type of Diagnostic Report"
//   * ^definition = "Defines the document type, it is recommended to take this from the suggested LOINC set."
// * subject 1..
* subject only Reference (CZ_PatientCore or Group or CZ_LocationCore or Device)
//   * ^short = "Who and/or what this report is about"
//   * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
* encounter only Reference (CZ_Encounter)
//   * ^short = "The healthcare event which this Diagnostic Report is about (when test ordered)."
//   * ^definition = """The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."""
//   * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests)."""
// * effective[x] ^short = "Clinically relevant time/time-period for report."
//* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
* performer only Reference (CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam )
// * performer
//   * insert SliceElementWithDescription( #profile, $this, [[Organization that delivered the report]] )
//   * ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
//* performer contains organization 0..*
* performer[organization] only Reference(CZ_OrganizationCore)
// * performer[organization] ^short = "The organization producer of this report"
// * performer[organization] ^definition = "The organization responsible for producing this report. In case practitioners produce them in their private practices, they will be accounted as an organization for this purpose."
* resultsInterpreter only Reference(CZ_PractitionerRoleCore or CZ_PractitionerCore or CZ_OrganizationCore or CareTeam)
// * resultsInterpreter 0..*
//   * insert SliceElementWithDescription( #profile, [[resolve()]], [[Primary interpreter of results]] )
//   * ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
//* resultsInterpreter contains author 0..*
* resultsInterpreter[author] only Reference(CZ_PractitionerRoleCore)
* specimen only Reference (CZ_Specimen)
// * specimen only Reference (Specimen)
//   * ^short = "Specimens this report is based on."
// * result only Reference (Observation)
//   * ^short = "results"
// * imagingStudy
//   * ^short = "Study subject to this report"
// * presentedForm ^short = "Entire report as issued (pdf recommended)"
* media
  * link
    * reference 0..0
    * type 0..0
    * identifier 0..0
    // * display 1..1
    //   * ^definition = "Text stating that instead of a reference to a Media resource, a DocumentReference resource is linked through the cross-version extension 'link'."
    //   * ^short = "Text stating use of cross-version extension 'link'"
    * extension contains $diagnosticReport-link-xver named link 0..1
    * extension[link]
      * ^definition = "Reference to a DocumentReference containing additional information/attachments associated with this report."
      * ^short = "DocumentReference containing additional information/attachments"
      * valueReference only Reference(DocumentReference)
