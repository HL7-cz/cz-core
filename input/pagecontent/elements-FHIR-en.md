Fast Healthcare Interoperability Resources (FHIR) is a standard that contains a set of rules and specifications for the secure exchange of electronic healthcare data. It is designed to be flexible and adaptable, so that it can be used in a wide range of settings and with different healthcare information systems. The standard describes data resources, data elements, data types, and application programming interfaces (APIs) for the exchange of electronic health records (EHRs).

### Data Types

The HL7 FHIR standard defines both simple (primitive) and complex data types that are used to specify individual resources. Data types, like individual resources, can be further profiled for the needs of specific implementations. For these purposes, national profiles have been created for specific national identifiers, names of persons, and addresses.

### Element

All data types and objects described by the FHIR standard are derived from a base element, called an Element. As the base type for all elements, an Element is an important structural element of FHIR. Even primitive types inherit the basic functionality and representation rules that apply to the Element type. All elements, whether defined as a data type (including primitive data types) or as a resource (part of a resource structure), have this basic content:
* Internal id
* Extension

There are 3 kinds of Element types that can be described:
* Primitive data types, which add a property to a primitive value of a given type
* Complex data types, which add their own descendants (all of which are also elements)
* BackboneElement – ​​All real-world objects are descendants of this base Element type, which uses the extension to define the content of the object (e.g. Patient.contact)

There are several possible notations for the structure of an element. The FHIR standard uses both XML and JSON notation. 
In the XML representation, an Element is represented as an XML element. The name of the element comes from the context in which it is used, not from the type. The internal id is represented as an attribute (similar to xml:id). Extensions are represented as additional XML elements. 
~~~
<use id="[internal id]">
    <extension url="..."/>
        ... if there is an extension
    <extension>
    .. additional elements ...
</use>
~~~

In the JSON representation, elements (except primitive types) are represented as properties of a JSON object (object property). The name of the property comes from the context in which it is used, not from the type (similar to the previous representation). The internal id is represented as a property of type string with the name "id". Extensions are represented as an array of JSON objects with the name "extension".
~~~
{
    "use" : {
        "id" : "[internal id]",
        "extension" : [
            .. if there is an extension...
        ],
        .. other properties ...
    }
}
~~~

### Resource

This specification defines a number of different types of resources that can be used to exchange and/or store data to solve a wide range of healthcare-related problems, both clinical and administrative. In addition, this specification defines several different ways of exchanging resources.
The following rules always apply to a Resource:
* has a known identity (URL) by which it can be addressed
* identifies itself as one of the resource types defined in this specification
* contains a set of structured data items as described in the resource type definition
* has an identified version that changes if the content of the resource changes

All resources may contain the following elements and properties:
* Identifier
* Meta data (a set of basic metadata about the object such as version, source, last modified date, etc.)
* Base language
* Reference to "implicit rules"
A resource may contain a reference to a set of rules (implicit rules) that were followed when creating the resource object itself. The rules determine not only the creation of the resource but also its content. As a rule, this is a link to the implementation guide that defines these rules.

### Codeable Concepts and Binding

One of the basic data types that are usually included in objects and resources is a coded concept. This is a data type that represents a value that is usually provided by providing a reference to one or more terminologies or ontologies, but can also be defined by providing text.

This data type can be bound to a certain terminology (ValueSet) using a binding. This binding as such is also a basic element with certain properties. A CodeableConcept can contain zero or more coded data (Coding) from one or more different coding systems and can also contain a textual representation of the concept. 
The basic properties of a binding include:
* Strength – the strength of the binding defined by one of the following values:
  * Required - In order for the concept to be in accordance with the specification, at least one code must be provided in this element, at least one of the listed codes MUST come from the specified set of values. In addition to the coded representation, a textual representation of the concept is also possible and recommended.
  * Extensible - To be compliant, a concept in this element MUST come from the specified value set if any of the codes in the value set can apply to the concept being communicated. If the value set does not cover the concept (based on human review), an alternative encoding (or, if the data type allows, just text) may be included instead.
  * Preffered - Instances are encouraged to draw from the specified codes for interoperability purposes, but are not required to do so to be considered compliant.
  * Example - Instances are not expected or even encouraged to draw from the specified value set. The value set merely provides examples of the types of concepts to be included.

In most cases, binding required or extensible is used for specific real-world FHIR profiles.