Instance: actor-creator-L1
InstanceOf: ActorDefinition
Title: "Actor Creator L1"
Description: """A system generating and sending/providing a L1 document to a Consumer for report storage and sharing."""
Usage: #example
* name = "Creator-L1"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the L1 document creators. That is the actor creating the report that can be sent to a consumer for report storage and sharing."""

Instance: actor-consumer-L1
InstanceOf: ActorDefinition
Title: "Actor Consumer L1"
Description: """A system receiving/querying and using a L1 document."""
Usage: #example
* name = "Consumer-L1"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the L1 document consumers. That is the system using the report received or retrieved.
Using includes, but is not limited to, the report display, storage or processing."""

Instance: actor-creator-L2
InstanceOf: ActorDefinition
Title: "Actor Creator L2"
Description: """A system generating and sending/providing a L2 document to a Consumer for report storage and sharing."""
Usage: #example

* name = "Creator-L2"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the L2 document creators. That is the actor creating the report that can be sent to a consumer for report storage and sharing."""

Instance: actor-consumer-L2
InstanceOf: ActorDefinition
Title: "Actor Consumer L2"
Description: """S system receiving/querying and using a L2 document."""
Usage: #example
* name = "Consumer-L2"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the L2 document consumers. That is the system using the report received or retrieved.
Using includes, but is not limited to, the report display, storage or processing."""

Instance: actor-creator-L3
InstanceOf: ActorDefinition
Title: "Actor Creator L3"
Description: """A system generating and sending/providing a L3 document to a Consumer for report storage and sharing."""
Usage: #example
* name = "Creator-L3"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the L3 document creators. That is the actor creating the report that can be sent to a consumer for report storage and sharing."""

Instance: actor-consumer-L3
InstanceOf: ActorDefinition
Title: "Actor Consumer L3"
Description: """A system receiving/querying and using a L3 document."""
Usage: #example
* name = "Consumer-L3"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the L3 document consumers. That is the system using the report received or retrieved.
Using includes, but is not limited to, the report display, storage or processing."""