### Patient [(PatientEU)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-patient-eu.html)

Information about a person who is provided with health services. This profile defines a patient structure that localizes basic concepts, including identifiers and terminology, for use in the Czech context. In contrast to the European profile, the national profile includes national identifiers such as RID, birth number, passport number, ID card number, insurance number (the specifics of the identifier are further described in the text below). It also specifies the expression of demographic data such as address. The Czech national profile adjusts the address entry so that it is possible to specify the street name, house number and post office box separately. It is always recommended to specify these elements separately. The national specification also includes the option to specify the location of the address according to the RUIAN register and to mark the address as the address of permanent residence.

### Healthcare worker [(PractitionerEU)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-practitioner-eu.html)

Information about a person who provides healthcare or is a participant in the creation of a medical document. The profile identifies the worker, allows their assignment within the organization, and it is possible to assign this person a role, which can be defined using one of the two code systems KRZP or SNOMED CT.

### Practitioner Role [(PractitionerRoleEu)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-practitionerRole-eu.html)

The profile defines the representation of a healthcare role in the Czech healthcare system based on the FHIR PractitionerRole. It allows the identification of healthcare and non-healthcare workers, their expertise, workplaces and contact details in accordance with Acts `č. 95/2004 Sb.` a `č. 96/2004 Sb.`. Key elements include a reference to a healthcare worker (practitioner), institution (organization), role code according to the National Code of Healthcare Professions (NRZP), specialization according to the KRPZS, place of performance (location), contact details (telecom), role status (active) and validity period (period). A specific extension for the Czech Republic is the connection with the Master Register of Healthcare Workers (KRZP) and the KRPZS, which allows verification of expertise and valid registration.

### Healthcare Provider Organization [(OrganizationEu)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-organization-eu.html)

This profile defines the way of representing an organization in the context of the Czech national interoperability project. Act `č. 372/2011 Sb.` explicitly regulates the identification of healthcare providers through registration, assigned IČO and other registration data, such as ICZ, ICP. This information is kept in the register of healthcare providers of the KRPZS and ensures the unambiguous identification of each entity providing healthcare in the Czech Republic.

### Related Person [(RelatedPerson)](https://hl7.org/fhir/R4/relatedperson.html)

The profile represents a Related Person in the context of the Czech National Interoperability Project. These persons typically have a personal or professional relationship with the patient that is not related to healthcare. The source is primarily used for attribution of information, as persons are often the source of information about the patient.