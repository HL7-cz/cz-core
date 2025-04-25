###	Pacient [(PatientEU)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-patient-eu.html)

Informace o osobě, které jsou poskytovány zdravotní služby. Tento profil definuje strukturu pacienta, která lokalizuje základní pojmy, včetně identifikátorů a terminologie, pro použití v českém kontextu. Oproti evropskému profilu, národní profil zahrnuje národní identifikátory typu RID, rodné číslo, číslo pasu, číslo občanského průkazu, číslo pojištěnce (specifika identifikátoru jsou dále rozepsána v textu níže). Dále specifikuje vyjádření demografických údajů jako například adresa. Český národní profil upravuje zadání adresy tak, aby bylo možné uvést samostatně název ulice, číslo domu a poštovní schránku. Tyto prvky se vždy doporučuje uvádět odděleně. Národní specifikace obsahuje také možnost zadat umístění adresy podle registru RUIAN a označit adresu jako adresu trvalého pobytu.

###	Zdravotnický pracovník [(PractitionerEU)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-practitioner-eu.html)

Informace o osobě, která poskytuje zdravotní péči nebo je účastníkem tvorby zdravotnického dokumentu. Profil identifikuje pracovníka, umožňuje jeho přiřazení v rámci organizace a je možné této osobě přidělit roli, která může být definována prostřednictvím jednoho ze dvou kódových systémů KRZP nebo SNOMED CT. 

###	Role zdravotnického pracovníka [(PractitionerRoleEu)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-practitionerRole-eu.html)

Profil definuje reprezentaci zdravotnické role v českém zdravotnickém systému na základě FHIR PractitionerRole. Umožňuje identifikaci zdravotnických a nezdravotnických pracovníků, jejich odborností, pracovišť a kontaktních údajů v souladu se zákony `č. 95/2004 Sb.` a `č. 96/2004 Sb.`. Klíčové prvky zahrnují odkaz na zdravotnického pracovníka (practitioner), instituci (organization), kód role dle Národního číselníku zdravotnických povolání (NRZP), specializaci dle KRPZS, místo výkonu (location), kontaktní údaje (telecom), stav role (active) a dobu platnosti (period). Specifickým rozšířením pro ČR je propojení s Kmenovým registrem zdravotnických pracovníků (KRZP) a KRPZS, které umožňuje ověřování odbornosti a platné registrace.

###	Poskytovatel zdravotních služeb [(OrganizationEu)](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-organization-eu.html)

Tento profil vymezuje způsob reprezentace organizace v kontextu českého národního projektu interoperability. Zákon `č. 372/2011 Sb.` explicitně upravuje identifikaci poskytovatelů zdravotních služeb prostřednictvím registrace, přiděleného IČO a dalších evidenčních údajů například ICZ, ICP. Tyto informace jsou vedeny v registru poskytovatelů zdravotních služeb KRZSP a zajišťují jednoznačnou identifikaci každého subjektu poskytujícího zdravotní péči v české republice. 

###	Související osoba [(RelatedPerson)](https://hl7.org/fhir/R4/relatedperson.html)

Profil představuje Related Person v kontextu českého národního projektu interoperability. Tyto osoby obvykle mají k pacientovi osobní vztah nebo profesní vztah nesouvisející se zdravotní péčí. Zdroj se primárně používá pro přiřazení informací, protože osoby jsou často zdrojem informací o pacientovi.
