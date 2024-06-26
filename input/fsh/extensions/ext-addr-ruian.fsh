Extension: AddressPointCz
Id:   address-point-cz
Title:  "Kód adresního místa dle systému RÚIAN (ČÚZK)"
Description: "Tato extenze umožňuje zápis kódu adresního místa dle registru RÚIAN. / This extension allows the entry of an address point according to the RÚIAN registry."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert SetFmmandStatusRule ( 1, draft )
* insert ExtensionContext(Address)

//* ^url = "http://ncez.mzcr.cz/standards/fhir/StructureDefinition/address-point-cz"
* value[x] only Identifier
* value[x].system = "https://ncez.mzcr.cz/fhir/sid/ruian" (exactly)
