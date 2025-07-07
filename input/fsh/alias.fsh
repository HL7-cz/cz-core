//============== ALIAS ===============
// Code systems
Alias: $sct =  http://snomed.info/sct
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $drzar = https://ncez.mzcr.cz/fhir/CodeSystem/cz-drzar
Alias: $sct-supplement-service-type = https://ncez.mzcr.cz/fhir/CodeSystem/snomed-supplement-service-type
Alias: $nrzp_povolani = https://ncez.mzcr.cz/fhir/CodeSystem/nrzp-povolani
Alias: $uri = urn:ietf:rfc:3986
Alias: $oid = urn:ietf:rfc:1155
Alias: $atc = https://ncez.mzcr.cz/CodeSystem/atc-cz
Alias: $standardterms = http://standardterms.edqm.eu
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $allergyintolerance-certainty = http://terminology.hl7.org/CodeSystem/reaction-event-certainty

// Extensions:
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime
Alias: $iso21090-ADXP-streetName = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName
Alias: $iso21090-ADXP-houseNumber = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber
Alias: $iso21090-ADXP-postBox = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox
Alias: $iso21090-SC-coding = http://hl7.org/fhir/StructureDefinition/iso21090-codedString
Alias: $ext-data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $patient-animal = http://hl7.org/fhir/StructureDefinition/patient-animal
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $sex-for-clinical-use = http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse
Alias: $recordedSexOrGender = http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender
Alias: $nationality = http://hl7.org/fhir/StructureDefinition/patient-nationality
Alias: $registering-provider = https://hl7.cz/fhir/core/StructureDefinition/registering-provider-cz
Alias: $bodyStructure-laterality-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.laterality
Alias: $bodySite-reference = http://hl7.org/fhir/StructureDefinition/bodySite
Alias: $specimen-container-device-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.container.device
Alias: $sampling-point = https://hl7.cz/fhir/core/StructureDefinition/sampling-point-cz
Alias: $source-device = https://hl7.cz/fhir/core/StructureDefinition/source-device-cz
Alias: $material = https://hl7.cz/fhir/core/StructureDefinition/material-cz
Alias: $instrument = https://hl7.cz/fhir/core/StructureDefinition/instrument-cz
Alias: $additional-data = https://hl7.cz/fhir/core/StructureDefinition/additional-data-cz


// Valuesets:
Alias: $CZ_AdministrativegenderVS = https://hl7.cz/fhir/ValueSet/administrative-gender-cz-vs
Alias: $MedicalDevicesSnomedAbsentUnknownUvIps = http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-snomed-absent-unknown-uv-ips
Alias: $iso3166-1-2 = http://hl7.org/fhir/ValueSet/iso3166-1-2
Alias: $hl7vs-contact-and-relationship-cz = https://hl7.cz/fhir/ValueSet/hl7vs-contact-and-relationship-cz
Alias: $RegisteringProviderServiceTypeCz = https://ncez.mzcr.cz/fhir/ValueSet/registering-provider-service-type-cz
Alias: $hl7CoverageType = http://hl7.org/fhir/ValueSet/coverage-type
Alias: $hl7AllergyintoleranceClinical = http://hl7.org/fhir/ValueSet/allergyintolerance-clinical
Alias: $hl7AllergyintoleranceType = http://hl7.org/fhir/ValueSet/allergy-intolerance-type
Alias: $hl7AllergyintoleranceCategory = http://hl7.org/fhir/ValueSet/allergy-intolerance-category
Alias: $hl7MedicationStatementStatus = http://hl7.org/fhir/ValueSet/medication-statement-status
Alias: $SNOMEDCTMedicationCodes = http://hl7.org/fhir/ValueSet/medication-codes
Alias: $hl7OrganizationType = http://hl7.org/fhir/ValueSet/organization-type
Alias: $PassportNSVS = https://ncez.mzcr.cz/fhir/ValueSet/PassportNS-vs
Alias: $hl7BodySite = http://hl7.org/fhir/ValueSet/body-site
Alias: $hl7BodyStructure = http://hl7.org/fhir/ValueSet/bodystructure-code


// Profiles:
Alias: $Organization-eu-core = http://hl7.eu/fhir/base/StructureDefinition/organization-eu-core
Alias: $Patient-eu-core = http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core
Alias: $Practitioner-eu-core = http://hl7.eu/fhir/base/StructureDefinition/practitioner-eu-core
Alias: $PractitionerRole-eu-core = http://hl7.eu/fhir/base/StructureDefinition/practitionerRole-eu-core
Alias: $RelatedPerson = http://hl7.org/fhir/StructureDefinition/RelatedPerson
//Alias: $bodySite = http://hl7.org/fhir/StructureDefinition/bodySite
//Alias: $flag-detail = http://hl7.org/fhir/StructureDefinition/flag-detail
//Alias: $flag-priority = http://hl7.org/fhir/StructureDefinition/flag-priority

//=========================