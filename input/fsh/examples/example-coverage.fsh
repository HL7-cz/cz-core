Instance: Coverage01
InstanceOf: CZ_Coverage
Usage: #example
Description: "Insurance or medical plan or a payment agreement"
Title: "Coverage Example"

// Coverage details
//* contained[+] = Mracena
* contained[+] = Organization-3
* type = #insurance
* status = #active
* beneficiary = Reference(Mracena) //"Pokusný pacient"
* payor = Reference(Organization-3) //"Pokusná pojišťovna"