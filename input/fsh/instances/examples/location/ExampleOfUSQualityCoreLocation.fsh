Instance: example-of-us-quality-core-location
InstanceOf: USQualityCoreLocation
Title: "Location example"
Description: "Example of a hospital location on the second floor of the South Wing"
Usage: #example
* id = "example"
* identifier
  * use = #temp
  * system = "http://example.org"
  * value = "B1-S.F2"
* status = #active
* name = "South Wing, second floor"
* alias[0] = "Example University Medical Center, South Wing, second floor"
* alias[+] = "EUMC, SW, F2"
* description = "Second floor of the South Wing"
* mode = #instance
* type = $v3-RoleCode#HOSP "Hospital"
* telecom[0]
  * system = #phone
  * value = "+1-555-555-0170"
  * use = #work
* telecom[+]
  * system = #fax
  * value = "+1-555-555-0171"
  * use = #work
* telecom[+]
  * system = #email
  * value = "southwing@example.org"
* telecom[+]
  * system = #url
  * value = "http://example.org/southwing"
  * use = #work
* address
  * use = #work
  * line = "1000 Example Campus Drive, Building A"
  * city = "Example City"
  * state = "VA"
  * postalCode = "99999"
  * country = "US"
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#wi "Wing"
* managingOrganization.reference = "Organization/example"
