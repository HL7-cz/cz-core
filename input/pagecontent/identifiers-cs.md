Tato kapitola se zaměřuje na široce rozšířené využití identifikátorů a obsahuje specifikaci českých národních identifikátorů. Tyto identifikátory slouží k jednotné identifikaci entit ve skutečném světě napříč různými systémy a kontexty.

**Doporučení pro použití identifikátorů**

Je doporučeno používat unikátní identifikátory pro každý typ entity a pokud možno, uvést alespoň jeden národní nebo mezinárodní identifikátor k objektům či subjektům. 

**Rozsah definice identifikátorů**

Je důležité zdůraznit, že definice identifikátorů není omezena jen na ty, které jsou popsány v této části, a lze použít i identifikátory mimo uvedený výčet.

### Obecné identifikátory

Na obecné úrovni se používají identifikátory ve formátu URI. Jedinečný identifikátor URI (Uniform Resource Identifier) je normován standardem RFC 3986. URI obvykle obsahuje schéma (např. https), autoritu (např. doménu), cestu a identifikaci objektu. Pokud URI odkazuje na identifikaci jedinečného dokumentu, může být toto URI považováno za unikátní identifikátor. 

V případě, že pro identifikaci objektu nebo subjektu není definováno jinak, je preferováno použití identifikátoru typu UUID.

#### UUID

UUID (Universally Unique Identifier) je normován standardem URI [RFC 9562](https://datatracker.ietf.org/doc/html/rfc9562) [(zastaralý RFC 4122)](http://www.ietf.org/rfc/rfc4122.txt). Identifikátor je generován tak, aby byl prakticky celosvětově jedinečný, a je často používán pro identifikaci objektů a entit v různých systémech, databázích a aplikacích. UUID je 128-bitové číslo, které je obvykle reprezentováno jako 32 hexadecimálních čísel, oddělených pomlčkami do podoby: `urn:uuid:c757873d-ec9a-4326-a141-556f43239520`.

HL7 FHIR používá UUID jako primitivní datový typ jako součást komplexních datových typů a reprezentuje jej ve formě URI (universal resource identifier) ​​podle RFC 4122. UUID shell by měl být reprezentován malými písmeny.

Formát musí odpovídat tomuto regulárnímu výrazu:
~~~
urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}
~~~

#### OID

OID (Object Identifier), který je používán pro unikátní identifikaci v IT, je normován standardy ISO/IEC. Jedná se o unikátní identifikátor používaný v informačních technologiích pro jednoznačné rozlišení objektů, atributů a datových struktur v rámci organizací, systémů a standardů. OID je hierarchický identifikátor ve formě čísel oddělených tečkami, které reprezentují cestu k danému objektu v hierarchii definované daným organizačním nebo standardizačním systémem, jako je například ISO.

OID umožňuje jednoznačnou identifikaci a adresaci datových prvků a entit v rámci různých systémů a usnadňuje interoperabilitu a správu zdrojů. 

Formát musí odpovídat tomuto regulárnímu výrazu:
~~~
urn:oid:[0-2](\.(0|[1-9][0-9]*))*
~~~

### Narodně specifikcé identifikátory

V této implementační příručce jsou definovány profily pro identifikátory pro použití při naplňování následujících datových prvků:
* Patient.Identifier
* Device.Identifier
* Document.Identifier
* Organization.Identifier
* Practitioner.Identifier

Všechny identifikátory musí být v rámci typu identifikátoru jedinečné.

---

#### Identifikátory pacienta

Obvykle, pokud je k dispozici, se používá některý z národních identifikátorů (číslo pacienta z národního registru pacientů, rodné číslo, číslo pojištění).

##### Resortní identifikátor (RID, DRID)

**RID** (Resortní identifikátor pacienta) – unikátní identifikátor, který přiřazuje danému pacientovi Kmenový registr pacientů (KRP). Jeho formát je bezvýznamové desetimístné číslo, které nesmí začínat nulou. Je dělitelné třinácti a zároveň není dělitelné jedenácti. Číslo je náhodně přidělováno a nesmí být použito znovu. 

Pro případy, kdy v rámci Kmenového registru pacientů (KRP) nyní fyzická osoba zavedena nebo není možné fyzickou osobu ztotožnit, je zaveden náhradní resortní identifikátor **DRID** (Dočasný resortní identifikátor - Temporary Healthcare Identifier). DRID. Jedná se o dočasný identifikátor, který je po ztotožnění spárován k příslušnému RID.

DRID je používán pro identifikaci:
- novorozence, který není dosud registrovaný v základních registrech (ZR)
- osoby neztotožněné proti základním registrům
- osoby neznámé nebo neidentifikovatelné

Jmenný prostor identifikátoru: `https://ncez.mzcr.cz/fhir/sid/rid`.

Formát musí odpovídat tomuto regulárnímu výrazu:
~~~
(D\d{9}|[1-9]\d{9})
~~~

##### Rodné číslo

Identifikátor se v mnoha kontextech používá jako jednoznačný identifikátor fyzické osoby. Při nakládání s ním je nutné zohlednit fakt, že se jedná o osobní údaj a na nakládání s ním se vztahují omezení daná zákonem o zpracování osobních údajů.

Rodná čísla jsou přidělována:
- fyzické osobě při narození nebo osvojení nezletilé fyzické osoby 
- občanu, který dosud rodné číslo neměl, cizinci s povolením k pobytu na území České republiky 
- cizinci, kterému byla na území České republiky udělena mezinárodní ochrana formou azylu nebo doplňkové ochrany 
- cizinci, který o přidělení rodného čísla požádal pro splnění podmínek podle zvláštního právního předpisu, např. studium na vysoké škole, zaměstnání apod. 
- fyzické osobě, pro kterou o přidělení rodného čísla požádala Česká správa sociálního zabezpečení nebo okresní správa sociálního zabezpečení podle zvláštního právního předpisu. 

Jmenný prostor vydavatele identifikátoru, v případě definice namespace prostřednictvím url, odpovídá hodnotě: `https://ncez.mzcr.cz/fhir/sid/rcis`.

Identifikátor reprezentuje unikátní hodnota, kterou přiděluje některé z výdejových míst. Podle zákona `č. 133/2000 Sb.`, o evidenci obyvatel a rodných číslech a o změně některých zákonů, konkrétně podle `§14`, jsou výdejová místa rodného čísla následující: 

- Matriční úřady:
  - Přidělují rodná čísla fyzickým osobám narozeným na území České republiky. 
- Zvláštní matrika:
  - Přiděluje rodná čísla občanům narozeným v zahraničí. 
- Ministerstvo vnitra:
  - Přiděluje rodná čísla:  
    - občanům, kteří dosud rodné číslo neměli
    - cizincům s povolením k pobytu na území České republiky
    - cizincům, kterým byl udělen azyl na území České republiky
    - cizincům, kteří o přidělení rodného čísla požádali pro splnění podmínek podle zvláštních právních předpisů
  - Ministerstvo vnitra, konkrétně odbor správních činností, provádí také změny rodných čísel přidělených před účinností tohoto zákona. 

Podléhá jednoznačné definici formátu (podle zákona `č. 133/2000 Sb.`), který je při jeho generování nutné dodržovat. Z historických důvodů dává smysl pravidla formátu pro elektronickou podobu omezit na:
* Minimální délka: 9 znaků
* Maximální délka: 10 znaků
* Musí se jednat o číslo, které odpovídá regulárnímu výrazu:
~~~
[0-9]{2}(?:[0257][1-9]|[1368][ 0-2])(?:0[1-9]|[12][0-9]|3[01])[0-9]{3,4}
~~~

##### Číslo pasu

Číslo pasu je jedinečné identifikační číslo, které potvrzuje, že osoba je občanem dané země. 

Pro identifikátory tohoto typu je nutné uvádět jmenný prostor dle vydavatele dokladu. Je vyžadováno použití standardních jmenných prostorů pro cestovní pasy. FHIR eviduje jmenné prostory pro pasy ve formátu: http://hl7.org/fhir/sid/passport-XXX, kde XXX je třípísmenný kód země podle ISO 3166. Například: `http://hl7.org/fhir/sid/passport-CZE`.

##### Číslo občasnkého průkau

Číslo občanského průkazu je přiděleno při vytvoření dokladu.

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/op`.

##### Číslo zdravotního pojištění

Identifikátor, který slouží k identifikaci a sledování zdravotního pojištění jednotlivce. Jedná se o číslo, které vytváří poskytovatel zdravotního pojištění. 

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/cpoj`.

---

#### Identifikátor zařízení

Jedná se o jedinečný identifikátor přístroje nebo prostředku, který je standardizován podle `nařízení EU 2017/745`. Jedinečný identifikátor zařízení (v originále ‘Unique Device Identifier’, který je známý jako 'UDI') je série numerických nebo alfanumerických znaků vytvořená prostřednictvím globálně přijatého standardu identifikace a kódování zařízení. Umožňuje jednoznačnou identifikaci konkrétního zařízení na trhu. UDI se skládá z UDI-DI a UDI-PI. 

UDI-DI je jedinečný numerický nebo alfanumerický kód specifický pro model zařízení, který je také použit jako 'přístupový klíč' k informacím uloženým v databázi UDI. 

UDI-PI je numerický nebo alfanumerický kód, který identifikuje jednotku výroby zařízení. Různé typy UDI-PI zahrnují sériové číslo, číslo výrobní série, identifikaci softwaru a datum výroby nebo expirace, nebo oba typy data.

---

#### Identifikátor dokumentu

Identifikátor dokumentu umožňuje jednoznačnou identifikaci zdravotnické dokumentace. Doporučuje se používat identifikátory typu UUID (preferované). Identifikátor dokumentu je obecně definován jako prostý řetězec znaků. Primární podmínkou je, že musí být v daném jmenném prostoru unikátní. Pro zajištění interoperability je dále nezbytné, aby bylo možné dokument dle tohoto identifikátoru, v kombinaci s uvedením jmenného prostoru, vyhledat. 

---

#### Identifikátory organizace

V rámci organizace je důležité použít jeden národní unikátní identifikátor k identifikaci organizace. 

##### KRPZS

Resortní identifikátor poskytovatele zdravotních služeb – identifikátorem poskytovatele je identifikátor organizace (IČO) z Registru osob (ROS), tedy osmimístné číslo, které může začínat nulou. V případě poskytovatelů zdravotních služeb by měl být identifikátor evidován pod namespace Kmenového registru poskytovatelů zdravotních služeb (KRPZS).

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/krpzs`.

Formát musí odpovídat tomuto regulárnímu výrazu:
~~~
\d{8}
~~~

##### IČO

K identifikaci organizací je možné použít také Identifikační číslo osoby pomoci osmimístného identifikačního čísla právnické osoby, podnikající fyzické osoby nebo organizační složky státu. 

V případě organizací, které nespadají pod Kmenový registr poskytovatelů zdravotních služeb, je tento identifikátor povinný. 

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/ico`.

Formát musí odpovídat tomuto regulárnímu výrazu:
~~~
\d{8}
~~~

##### Kód pojišťovny - KP

Regulačním orgánem pro oblast zdravotního pojištění a zveřejňováním oficiálních informací o pojišťovnách a jejich identifikátorech je Ministerstvo zdravotnictví České republiky. 

Identifikační číslo zdravotní pojišťovny je vedeno ve formátu třímístného čísla - např.: 111. 

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/kp`.

##### Ostatní

Pro identifikaci organizace byly běžně využívány další dva typy identifikátorů:
- **IČZ** - Jmenný prostor: `https://ncez.mzcr.cz/fhir/sid/icz`
- **IČP** - Jmenný prostor: `https://ncez.mzcr.cz/fhir/sid/icp`
  
**IČZ** je identifikační číslo poskytovatele zdravotních služeb. **IČP** je identifikační číslo pracoviště (nebo lékaře) v rámci jednoho IČZ.

IČZ a IČP přiděluje výhradně VZP ČR pro potřeby všech zdravotních pojišťoven v České republice. Žádost o přidělení IČZ a IČP se proto podává vždy VZP ČR bez ohledu na to, které zdravotní pojišťovně bude poskytnutá neodkladná péče vyúčtována

**Struktura a vztah**

V rámci IČZ může existovat více různých IČP. IČZ obvykle končí 000, IČP má prvních 5 znaků shodných s IČZ a poslední trojčíslí jiné, ale nemusí to platit vždy. 

---

#### Identifikátory zdravotnického pracovníka

Slouží k identifikaci lékařských i nelékařských pracovníků dle zákona `č. 372/2011 Sb.`. V rámci organizace je nezbytné použít alespoň jeden národní unikátní Identifikátor. Preferovaným identifikátorem je identifikátor typu KRZP. 

##### KRZP

Resortní identifikátor zdravotnického pracovníka – unikátní identifikátor, který je evidován v rámci Kmenového registru zdravotnických pracovníků. 

Identifikátor zdravotnického pracovníka přiděluje ministerstvo při zápisu zdravotnického pracovníka do Kmenového registru zdravotnických pracovníků. Každý zdravotnický pracovník je identifikován pouze jedním identifikátorem.

Identifikátor zdravotnického pracovníka nelze po přidělení měnit, pokud zákon nestanoví jinak (např.: při výskytu duplicitních identifikátorů, kdy jsou předchozí zrušeny a pro jednotlivé subjekty vygenerovány nové unikátní identifikátory). Jeho formát je bezvýznamové devítimístné číslo, které nesmí začínat nulou. 

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/krzp`.

Formát musí odpovídat tomuto regulárnímu výrazu:
~~~
[1-9]\d{8}
~~~

##### ČLK

Identifikační číslo zdravotnického pracovníka dle ČLK (Česká lékařská komora).

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/clk`.

##### ČLék

Identifikační číslo zdravotnického pracovníka (lékárníka) dle ČLék (Česká lékárnická komora).

Jmenný prostor identifikátoru je v tomto případě prezentován hodnotou: `https://ncez.mzcr.cz/fhir/sid/clek`.

---

### Souhrn výčtu národních identifikátorů

| Oblast         | Název                                                        | Jmenný prostor                       |
| -------------- | ------------------------------------------------------------ | ------------------------------------ |
| **Pacient**    | Resortní identifikátor pacienta                              | https://ncez.mzcr.cz/fhir/sid/rid    |
| Pacient        | Rodné číslo                                                  | https://ncez.mzcr.cz/fhir/sid/rcis   |
| Pacient        | Číslo pasu                                                   | http://hl7.org/fhir/sid/passport-CZE |
| Pacient        | Číslo občanského průkazu                                     | https://ncez.mzcr.cz/fhir/sid/op     |
| Pacient        | Číslo pojištěnce                                             | https://ncez.mzcr.cz/fhir/sid/cpoj   |
| **Organizace** | Kmenový registr poskytovatelů zdravotních služeb - KRPZS     | https://ncez.mzcr.cz/fhir/sid/krpzs  |
| Organizace     | Identifikační číslo osoby (právnické nebo živnostníka) - IČO | https://ncez.mzcr.cz/fhir/sid/ico    |
| Organizace     | Kód pojišťovny - KP                                          | https://ncez.mzcr.cz/fhir/sid/kp     |
| Organizace     | Identifikační číslo poskytovatele zdravotních služeb - IČZ   | https://ncez.mzcr.cz/fhir/sid/icz    |
| Organizace     | Identifikační číslo pracoviště (nebo lékaře) - IČP           | https://ncez.mzcr.cz/fhir/sid/icp    |
| **Pracovník**  | Kmenový registr zdravotnických pracovníků - KRZP             | https://ncez.mzcr.cz/fhir/sid/krzp   |
| Pracovník      | Česká lékařská komora - ČLK                                  | https://ncez.mzcr.cz/fhir/sid/clk    |
| Pracovník      | Česká lékárnická komora - ČLéK                               | https://ncez.mzcr.cz/fhir/sid/clek   |

