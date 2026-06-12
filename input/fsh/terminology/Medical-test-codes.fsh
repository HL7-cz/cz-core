ValueSet: LaboratoryResultStandardCzVs
Id: lab-obsCode-cz-lab
Title: "Laboratory Code"
Description: "Laboratory observation codes. List of Laboratory observation codes containing NCLP."
* ^status = #active
* ^experimental = false
//* insert NCLPCopyrightForVS
* include codes from system $nclp

ValueSet: MedicalTestResultCodeCzVs
Id: medicalTestResult-cz
Title: "Medical Test Result Code"
Description: "Medical test result codes. List of Medical test result codes containing LOINC, NCLP and Snomed CT."
* insert SNOMEDCopyrightForVS
* ^status = #active
* ^experimental = false
* include codes from system $nclp
* include codes from system $sct // where concept is-a #363787002  // Observeable entity