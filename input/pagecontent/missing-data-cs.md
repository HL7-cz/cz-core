### Chybějící data

Tato stránka obsahuje obecná pravidla pro způsoby řešení chybějících dat.

Obsah této stránky byl upraven dle [HL7 International Patient Summary Implementation Guide (IPS)](https://hl7.org/fhir/uv/ips/).


#### Nepovinné datové elementy (elementy s kardinalitou 0..1 nebo 0..\*)

Pokud nejsou pro daný element k dispozici žádná data, pak se nepovinný datový element vynechá.

Poznámka: Tvůrce obsahu nemusí mít k dispozici požadovaná data buď proto, že žádná data neexistují/nejsou známa, data nelze sdílet nebo dostupná data nejsou v daném kontextu relevantní.

#### Povinné datové elementy (elementy s kardinalitou 1..1 nebo 1..\*)

Pokud tvůrce obsahu nedisponuje údaji, které mají být zahrnuty do zdrojů, MUSÍ být důvod jejich absence uveden následovně:

1.  U _nekódovaných_ datových elementů se použije extenze [Data Absent Reason Extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html).

    Příklad: Zdroj Patient, u kterého není známo datum narození (všimněte si, že jelikož birthDate je primitivní datový typ typu `date`, v JSON se pro extenzi používá property \_birthDate). Ostatní povinné property zdroje Patient jsou v níže uvedeném zjednodušeném příkladu vynechány (označeny ...).

    ```
    {
      "resourceType" : "Patient",
      ...
      "_birthDate": {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode" : "unknown"
          }
        ]
      },
      ...
    }
    ```

    Příklad: Zdroj typu Procedure, u kterého není známa hodnota elementu performed. Performed[x] je typ s výběrem, ačkoli lze pro extenzi „data absent reason“  použít jakýkoli prvek performed[x]; je v tomto příkladu využit element performedDateTime (pozn.: performedDateTime je primitivní datový typ typu `dateTime`; v JSON se pro extenzi použije property \_performedDateTime). Ostatní povinné property zdroje Procedure jsou v níže uvedeném zjednodušeném příkladu vynechány (označeny ...).

    ```
    {
      "resourceType" : "Procedure",
      ...
      "_performedDateTime": {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode" : "unknown"
          }
        ]
      },
      ...
    }
    ```

2.  Pro _kódované_ datové elementy se použijí následující pravidla:
    - pokud je síla vazby (binding strenght) _example_, _preferred_ nebo _extensible_ (pro datový typ `CodeableConcept`):
      - pokud zdrojový systém obsahuje text, ale žádná kódovaná data, použije se pouze element text (CodeableConcept.text).
      - pokud není k dispozici ani text, ani kód představující skutečný koncept (non-exceptional):
        - použije se příslušný exceptional kód, je-li v požadovaném číselníku k dispozici; nebo
        - použije se příslušný kód z kódového systému [Data Absent Reason Code System](http://hl7.org/fhir/R4/valueset-data-absent-reason.html).
    - pokud je síla vazby _required_  (pro datové typy `CodeableConcept` nebo `code`):
      - použije se příslušný exceptional kód z požadovaného číselníku

    Příklad: Výsledky vyšetření – v případě laboratorních výsledků, u nichž není povoleno sdílení kódu (např. jsou utajeny) obsahuje element code rozšíření „data-absent-reason“.

    ```
    {
      "resourceType" : "Observation",
      ...
      "code": {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
            "code" : "masked"
          }
        ]
      },
      ...
    }
    ```

#### Orientační informace o datech: extenze Period of Life

Pokud jsou k dispozici pouze orientační časové údaje (např. „v období dospívání“), lze k vyjádření této informace použít [**extenzi period of life**](https://hl7.eu/fhir/extensions/StructureDefinition-periods-of-life.html).

U datových elementů s více možnostmi datového typu (`[x]`) by se při předávání orientačních informací o datu a čase MĚL jako preferovaný datový typ používat typ `dateTime`.

Příklad fragmentu (Immunization): přesné datum výskytu není známo, ale je známo období, v němž k němu došlo.

```
{
  "resourceType": "Immunization",
  ...
  "_occurrenceDateTime": {
    "extension": [
      {
        "url": "http://hl7.eu/fhir/base/StructureDefinition/periods-of-life",
        "valueCodeableConcept": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "263659003",
              "display": "Adolescence"
            }
          ]
        }
      }
    ]
  },
  ...
}
```
