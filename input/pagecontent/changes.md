This page summarizes the main changes applied to this version of the guide.

### from 0.3.0 to 0.4.0

* Added Change log page
* Fix error in Logo profile (removed language 0..0 constrain)
* Added page with guidance on handling missing-data
* Update dependency on HL7 EU Base 2.0.0
* Added new profiles for:
  * composition-cz-core derived from composition-eu-core
  * diagnosticReport-cz-core derived from diagnosticReport-eu-core
  * immunization-cz-core derived from immunization-eu-core
* Updated profiles:
  * allergyIntolerance-cz-core now derived from allergyIntolerance-eu-core
  * body-structure-cz-core
    * now derived from allergyIntolerance-eu-core
    * removed bodyStructure-laterality-r5 extension and use bodyStructure-includedStructure-r5 extension instead
