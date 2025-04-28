###	Zdravotnický přístroj [(Device)](https://hl7.org/fhir/R4/device.html)

Tento profil obsahuje omezení aplikovaná na zdroj Device v rámci českého národního projektu interoperability. Profil popisuje zařízení v roli "observer" nebo "performer". Tento profil specifikuje požadavky na Device použité při vyšetření. Zdravotnický přístroj se eviduje pomocí identifikátoru UDI (popis naleznete níže v dokumentu v sekci identifikátoru).

###	Zdravotnický prostředek [(Device)](https://hl7.org/fhir/R4/device.html)

Tento profil představuje požadavky na Device v rámci českého národního projektu interoperability. 
Typ zdravotnického prostředku. Přednostně se uvádí pomocí kódu SNOMED CT, lze však využít také jiných kódových systémů, např. klasifikačního systému EMDN. Absence informací nebo nepřítomnost zdravotnického prostředku se výslovně uvede pomocí kódů z číselníku absent-or-unknown-devices-uv-ips. Evropská směrnice `93/42/EHS rozděluje zdravotnické prostředky do čtyř rizikových skupin (I, IIa, IIb,III)`. Je-li při poskytování zdravotních služeb použit zdravotnický prostředek rizikové třídy IIb nebo III, je poskytovatel zdravotních služeb povinen dle zákona `č. 375/2022 Sb.` provést o tom záznam ve zdravotnické dokumentaci vedené o pacientovi.

###	Vzorek [(Specimen)](https://hl7.org/fhir/R4/specimen.html)

Jedná se o jakékoli vzorky materiálu: 
- odebrané z biologické entity, živé nebo mrtvé
- převzaté z fyzického předmětu nebo prostředí

Některé vzorky jsou biologické a mohou obsahovat jednu nebo více složek včetně, ale bez omezení, buněčných molekul, buněk, tkání, orgánů, tělesných tekutin, embryí a produktů tělesného vylučování. Zdroj vzorků zahrnuje látky používané pro diagnostické a environmentální testování. Těžištěm zdroje vzorků je proces shromažďování, udržování a zpracování vzorku a také to, odkud vzorek pochází. 

###	Medikace [(MedicationStatement)](https://hl7.org/fhir/R4/medicationstatement.html)

Tento profil je odvozen od Medication Statement, který představuje záznam léku, který pacient užívá. Prohlášení o medikaci může naznačovat, že pacient může užívat léky nyní nebo je užíval v minulosti nebo je bude užívat v budoucnu. Zdrojem těchto informací může být pacient, další významná osoba (například rodinný příslušník nebo manžel/ka) nebo lékař. Běžným scénářem, kdy jsou tyto informace zachyceny, je proces odebírání historie během návštěvy nebo pobytu pacienta. Informace o lécích mohou pocházet ze zdrojů, jako je paměť pacienta, z lahvičky na předpis nebo ze seznamu léků, které pacient, lékař nebo jiná strana vede.

###	Úhrada [(Coverage)](https://hl7.org/fhir/R4/coverage.html)

Tento profil představuje požadavky na zdroj Coverage v rámci českého národního projektu interoperability. Úhrada je určena k poskytování identifikátorů informací, které by se objevily na kartě pojištěnce, kterou lze použít k částečné nebo úplné úhradě za poskytování produktů a služeb zdravotní péče. Zároveň tento zdroj lze také použít k registraci „SelfPay“, kde jednotlivec nebo organizace jiná, než pojistitel, přebírá odpovědnost za platbu části či celých nákladů na zdravotní péči. 

###	Alergie [(AllergyIntollerance)](https://hl7.org/fhir/R4/allergyintolerance.html)

Záznam o klinickém hodnocení alergie nebo intolerance; sklon nebo potenciální riziko pro jednotlivce k nepříznivé reakci při budoucí expozici specifikované látce nebo třídě látek. Profil představuje požadavky na AllergyIntolerance v rámci českého národního projektu interoperability.

###	Elektronický podpis [(Signature)](https://hl7.org/fhir/R4/datatypes.html#Signature)

Podpis spolu s podpůrným kontextem; Podpis může být digitální podpis, který má kryptografický charakter, nebo jiný podpis přijatelný pro doménu. Profil představuje požadavky na Signature v rámci českého národního projektu interoperability.
