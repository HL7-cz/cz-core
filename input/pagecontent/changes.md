This page summarizes the main changes applied to this version of the guide.

### from 0.3.0 to 1.0.0

* Added Change log page
* Fix error in Logo profile (removed language 0..0 constrain)
* Added page with guidance on handling missing-data
* Update dependency on HL7 EU Base 2.0.0
* Updated profiles:
  * allergyIntolerance-cz-core now derived from allergyIntolerance-eu-core
  * body-structure-cz-core
    * now derived from body-structure-eu-core
    * removed bodyStructure-laterality-r5 extension and use bodyStructure-includedStructure-r5 extension instead
  * condition-cz-core now derived from condition-eu-core
  * medication-cz-core now derived from medication-eu-core
    * new extension classification (binding to dlp-atc)
  * medicationStatement-cz-core now derived from medicationStatement-eu-core
* Added new profiles for:
  * appointment-cz_core
  * carePlan-cz-core
  * composition-cz-core derived from composition-eu-core
  * diagnosticReport-cz-core derived from diagnosticReport-eu-core
  * immunization-cz-core derived from immunization-eu-core
  * flag-patient-cz-core derived from flag-patient-eu-core
  * deviceUseStatement-cz-core, new extension Reference(bodyStructureCz)
  * medicalTestResult-cz-core derived from medical-testResult-eu-core
  * practitionerrole-cz-order - specific profile for order document types
