Seznam hlavních provedených změn ve verzích tohoto IG.

### od 0.3.0 do 1.0.0

* Přidána stránka pro evidenci změn v IG
* Úprava profilu Logo (zrušeno omezení elementu language 0..0)
* Vytvořena stránka s popisem způsobu řešení chybějících dat
* Aktualizace závislosti na HL7 EU Base 2.0.0
* Aktualizované profily
  * allergyIntolerance-cz-core nyní odvozeno od allergyIntolerance-eu-core
  * body-structure-cz-core
    * nyní odvozeno od body-structure-eu-core
    * odstraněna extenze bodyStructure-laterality-r5 a místo ní použita extenze bodyStructure-includedStructure-r5
  * condition-cz-core nyní odvozeno od condition-eu-core
  * medication-cz-core nyní dovozeno od medication-eu-core
    * přidána extenze classification (binding na dlp-atc)
  * medicationStatement-cz-core nyní dovozeno od medicationStatement-eu-core
* Přidány nové profily:
  * appointment-cz-core
  * carePlan-cz-core
  * composition-cz-core odvozený od composition-eu-core
  * diagnosticReport-cz-core odvozený od diagnosticReport-eu-core
  * immunization-cz-core odvozený od immunization-eu-core
  * flag-patient-cz-core odvozený od flag-patient-eu-core
  * deviceUseStatement-cz-core, přidána extenze Reference(bodyStructureCz)
  * medicalTestResult-cz-core odvozený od medical-testResult-eu-core
  * medicationAdministration-cz-core
  * medicationStatement-cz-core odvozený od medicationStatement-eu-core
  *
