Instance: example-1
InstanceOf: USQualityCoreOrganization
Title: "Hospital Organization example"
Description: "Example hospital organization"
Usage: #example
* identifier
  * use = #temp
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "1285243618"
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Example Hospital"
* telecom[0]
  * system = #phone
  * value = "+1-555-555-0100"
* telecom[+]
  * system = #fax
  * value = "+1-555-555-0101"
* telecom[+]
  * system = #email
  * value = "staff@example.org"
* address
  * line = "700 Example Hospital Way"
  * city = "Example City"
  * state = "VA"
  * postalCode = "99999"
  * country = "US"
