### Observer device [(Device)](https://hl7.org/fhir/R4/device.html)

This profile contains restrictions applied to the Device resource within the Czech national interoperability project. The profile describes a device in the role of "observer" or "performer". This profile specifies the requirements for the Device used during the examination. The medical device is registered using the UDI identifier (the description can be found below in the document in the identifier section).

### Medical device [(Device)](https://hl7.org/fhir/R4/device.html)

This profile presents the requirements for the Device within the Czech national interoperability project. 
Type of medical device. It is preferably indicated using the SNOMED CT code, but other code systems can also be used, e.g. the EMDN classification system. The absence of information or the absence of a medical device is explicitly indicated using codes from the absent-or-unknown-devices-uv-ips code list. European `Directive 93/42/EEC divides medical devices into four risk groups (I, IIa, IIb,III)`. If a medical device of risk class IIb or III is used in the provision of health services, the health service provider is obliged, pursuant to Act `č.375/2022 Sb.`, to make a record of this in the medical documentation kept about the patient.

### Specimen [(Specimen)](https://hl7.org/fhir/R4/specimen.html)

Any sample of material: 
* taken from a biological entity, living or dead
* taken from a physical object or environment

Some samples are biological and may contain one or more components including, but not limited to, cellular molecules, cells, tissues, organs, body fluids, embryos, and bodily excretions. The source of a sample includes substances used for diagnostic and environmental testing. The focus of a sample source is the process of collecting, maintaining, and processing the sample, as well as where the sample came from.

###	Medication [(MedicationStatement)](https://hl7.org/fhir/R4/medicationstatement.html)

This profile is derived from a Medication Statement, which is a record of the medication a patient is taking. A Medication Statement may indicate that the patient may be taking medications now, has taken them in the past, or will take them in the future. The source of this information may be the patient, a significant other (such as a family member or spouse), or the physician. A common scenario in which this information is captured is during the history taking process during a patient visit or stay. Medication information may come from sources such as the patient's memory, the prescription bottle, or a medication list maintained by the patient, physician, or other party.

### Coverage [(Coverage)](https://hl7.org/fhir/R4/coverage.html)

This profile represents the requirements for the Coverage resource within the Czech National Interoperability Project. Coverage is intended to provide identifiers of information that would appear on an insured card that can be used to partially or fully reimburse for the provision of healthcare products and services. At the same time, this resource can also be used to register for "SelfPay", where an individual or organization other than the insurer assumes responsibility for paying part or all of the costs of healthcare. 

### Allergy [(AllergyIntollerance)](https://hl7.org/fhir/R4/allergyintolerance.html)

A record of a clinical assessment of allergy or intolerance; the propensity or potential risk for an individual to have an adverse reaction upon future exposure to a specified substance or class of substances. The profile represents the requirements for AllergyIntolerance within the Czech National Interoperability Project.

### Digital Signature [(Signature)](https://hl7.org/fhir/R4/datatypes.html#Signature)

A signature together with a supporting context; A signature can be a digital signature that has a cryptographic character, or another signature acceptable to the domain. The profile represents the requirements for Signature within the Czech national interoperability project.