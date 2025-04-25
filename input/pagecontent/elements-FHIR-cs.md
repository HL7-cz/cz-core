Fast Healthcare Interoperability Resources (dále jen FHIR) je standardem obsahující soubor pravidel a specifikací pro bezpečnou výměnu elektronických dat zdravotní péče. Je navržen tak, aby byl flexibilní a adaptabilní, takže jej lze používat v široké škále nastavení a s různými informačními systémy zdravotní péče. Norma popisuje datové zdroje (resource), datové prvky (elementy), datové typy a aplikační programovací rozhraní (API) pro výměnu elektronických zdravotních záznamů (EHR).

### Datové typy

Standard HL7 FHIR definuje jednoduché (primitivní) i komplexní datová typy, které jsou použity pro specifikaci jednotlivých zdrojů. Datové typy, podobně jako jednotlivé zdroje mohou být dále profilovány pro potřeby konkrétních implementací. Pro tyto účely byly vytvořeny národní profily pro specifické národní identifikátory, jména osob a adresy.

### Element

Všechny datové typy a objekty popsané standardem FHIR jsou odvozeny od základního prvku, tzv. Elementu. Jako základní typ pro všechny prvky je Element důležitým strukturálním prvkem FHIR. Dokonce i primitivní typy dědí základní funkce a pravidla reprezentace, která platí pro typ Element. Všechny prvky, ať už jsou definovány jako datový typ (včetně primitivních datových typů) nebo jako resource (součást struktury zdrojů), mají tento základní obsah:
*	Interní id
*	Extension (Rozšíření)
 
Existují 3 druhy typů Elementů, které lze popsat:
*	Primitivní datové typy, které přidávají vlastnost primitivní hodnoty zadaného typu
*	Komplexní datové typy, které přidávají své vlastní potomky (všechny jsou také prvky)
*	BackboneElement – Všechny objekty reálného světa jsou potomkem tohoto základní typu Elementu, který pomocí extension (rozšíření) definuje obsah objektu (např. Patient.contact)

Existuje několik možných zápisů struktury elementu. Ve standardu FHIR se používá zápis v XML a JSON formátu. 
V XML reprezentaci je Element reprezentován jako XML element. Název elementu pochází z kontextu, ve kterém je použit, nikoli z typu. Interní id je reprezentováno jako atribut (podobně jako xml:id). Rozšíření (neboli extensions) jsou reprezentována jako další prvky (elementy) XML. 
~~~
  <use id="[internal id]">
    <extension url="..."/>
      ... pokud je existuje extenze
    <extension>
    .. další elementy ...
  </use>
~~~

V JSON reprezentaci jsou elementy (kromě primitivních typů) reprezentovány jako vlastnosti objektu JSON (object property). Název vlastnosti pochází z kontextu, ve kterém je použita, nikoli z typu (podobně jako v předchozí reprezentaci). Interní id je reprezentováno jako property typu string s názvem "id". Rozšíření (extensions) jsou reprezentována jako pole (array) JSON objektů s názvem „extension“.
~~~
  {
    "use" : {
      "id" : "[internal id]",
      "extension" : [
        .. pokud existuje extenze...
      ],
      .. další properties ...
    }
  }
~~~

### Resource

Tato specifikace definuje řadu různých typů zdrojů (resource), které lze použít k výměně a/nebo ukládání dat za účelem řešení široké škály problémů souvisejících se zdravotní péčí, jak klinických, tak administrativních. Kromě toho tato specifikace definuje několik různých způsobů výměny zdrojů.
Pro Resource vždy platí tyto pravidla:
*	má známou identitu (URL), pomocí které může být adresován
*	identifikuje se jako jeden z typů resource (zdrojů) definovaných v této specifikaci
*	obsahuje sadu strukturovaných datových položek, jak je popsáno v definici typu resource
*	má identifikovanou verzi, která se změní, pokud se změní obsah zdroje

Všechny resource mohou obsahovat tyto prvky (elementy) a vlastnosti (properties):
*	Identifikátor
*	Meta data (sada základních metadat objektu jako verze, zdroj, datum poslední změny apod.)
*	Základní jazyk
*	Odkaz na "implicitní pravidla"
V resource může být obsažen odkaz na sadu pravidel (implicitní pravidla), která byla dodržena při vytváření samotného objektu typu resource. Pravidla určují nejen tvorbu zdroje ale i jeho obsahu. Zpravidla se jedná o odkaz na implementační guide, který definuje tyto pravidla.

### Kódované koncepty a binding

Jedním ze základních datových typů, které jsou zpravidla obsaženy v objektech a resources je kódovaný koncept. Jedná se o datový typ, který reprezentuje hodnotu, která je obvykle poskytnuta poskytnutím odkazu na jednu nebo více terminologií nebo ontologií, ale může být také definována poskytnutím textu.
 
Tento datový typ lze svázat s určitou terminologií (ValueSet) pomocí binding (vazby). Tato vazba jako taková je také základním elementem s určitými vlastnostmi. CodeableConcept může obsahovat žádný nebo více kódovaných údajů (Coding) z jednoho či více různých kódových systémů a může také obsahovat textové vyjádření konceptu. 
Mezi základní vlastnosti vazby patří:
*	Pevnost (Strength) – síla vazby definované jednou z těchto hodnot:
    *	Požadováno (required) - Aby byl koncept v tomto prvku v souladu se specifikací, musí být uveden alespoň jeden kód, alespoň jeden z uvedených kódů MUSÍ pocházet ze zadané sady hodnot. Vedle kódového vyjádření je možná a doporučená také textová reprezentace konceptu.
    *	Rozšiřitelný (extensible) - Aby byl koncept v tomto prvku v souladu, MUSÍ pocházet ze zadané sady hodnot, pokud se na sdělovaný koncept může vztahovat kterýkoli z kódů v sadě hodnot. Pokud sada hodnot nepokrývá koncept (na základě kontroly člověkem), může být místo toho zahrnuto alternativní kódování (nebo, pokud to datový typ umožňuje, pouze text).
    *	Upřednostňovaný (preffered) - instancím se doporučuje čerpat ze specifikovaných kódů pro účely interoperability, ale není to vyžadováno, aby byly považovány za vyhovující.
    *	Příklad (example) - Od instancí se neočekává, nebo dokonce není podporováno, aby čerpaly ze zadané sady hodnot. Sada hodnot pouze poskytuje příklady typů pojmů, které mají být zahrnuty.

Ve většině případů je u konkrétních reálných FHIR profilů použit binding required nebo extensible. 



