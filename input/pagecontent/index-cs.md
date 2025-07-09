{% include variable-definitions.md %}
### Úvod
Tato implementační příručka CZ Base and Core je založena na [FHIR verze R4](https://hl7.org/fhir/R4/). Definuje minimální pravidla pro interoperabilitu a národní přizpůsobení zdrojů FHIR, která se uplatňují při vytváření národních profilů pro specifické případy použití. Stanovení standardů na podporu interoperability a jejich implementace v informačních systémech vytváří společný základ pro interoperabilní výměnu zdravotních dat.

V této implementační příručce naleznete pravidla pro vytváření národních profilů, používání identifikátorů a základních informačních komponent.

### Stručný rozsah
Tato příručka je rozdělena na několik stránek, které jsou uvedeny v horní části každé stránky na liště nabídek.

- [Home - Domovská stránka](index-cs.html): Tato stránka poskytuje úvodní informace, stručný rozsah použití, reference, závislosti, rozdílovou analýzu verzí a prohlášení o duševním vlastnictví.
- Introduction:
  - [Základní prvky FHIR (CS)](elements-FHIR-cs.html): Tato stránka popisuje základní prvky FHIR v češtině.
- Function view:
  - [Subjekty (CS)](subjects-cs.html): Tato stránka popisuje základní složky v postavení podmětů v češtině.
  - [Objekty (CS)](objects-cs.html): Tato stránka popisuje základní složky v postavení předmětu v češtině.
  - [Identifikátory (CS)](identifiers-cs.html): Tato stránka popisuje identifikátory, které se používají v komponentách v češtině.
- About:
  - [Autoři](authors-cs.html): Tento segment obsahuje informace o autorech.
  - [Downloads](downloads-cs.html): Tento segment obsahuje informace o možnostech stahování obsahu implementační specifikace.
  - [Závislosti](dependencies-cs.html): Tento segment obsahuje informace o závislostech.
  - [Autorská práva](copyright-cs.html): Tento segment obsahuje informace o autorských právech.
- [Artifacts](artifacts.html): Tato stránka poskytuje seznam FHIR artefaktů definovaných jako součást této implementační příručky.

### Reference

* Související specifikace:
  * {{hl7XtEHR}}
    * Tato specifikace inspirovala mnoho návrhových vzorů definovaných v tomto IG.
  * {{hl7Eu}}
    * Tato specifikace vychází z návrhových vzorů definovaných v tomto IG.

### Závislosti

{% include dependency-table.xhtml %}

### Rozdílová analýza verzí

{% include cross-version-analysis.xhtml %}

### Prohlášení o duševním vlastnictví

{% include ip-statements.xhtml %}