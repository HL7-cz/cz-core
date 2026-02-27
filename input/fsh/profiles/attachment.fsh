// TODO: Tento profil je pravděpodobně zbytečný, protože DocumentReference již obsahuje element attachment, který může být použit pro připojení dokumentů. Pokud však existují specifické požadavky pro připojení dokumentů v rámci českých národních interoperabilních standardů, může být tento profil užitečný pro definování těchto požadavků a omezení. Je důležité zvážit, zda je tento profil skutečně potřebný a zda nepřidává zbytečnou složitost do implementace.
// Zrevidovat jeho užitečnost v příští verzi standardu, případně jej odstranit, pokud se ukáže jako zbytečný.
Profile: CZ_Attachment
Parent: DocumentReference
Id: cz-attachment
Title: "Attachment (CZ)"
Description: "Czech national profile for attachment. "

* . ^short = "Document reference attachment"
* . ^definition = "Document reference attachment profile for Czech national interoperability standards."
* . ^comment = "Attachment can contain base64 encoded data or reference to external URL. URL reference is preferred in case of attached documents."

* insert SetFmmandStatusRule ( 0, draft )

* content.attachment
* content.attachment.contentType MS
* content.attachment.language MS
* content.attachment.url MS
* content.attachment.title MS
* content.attachment.creation MS