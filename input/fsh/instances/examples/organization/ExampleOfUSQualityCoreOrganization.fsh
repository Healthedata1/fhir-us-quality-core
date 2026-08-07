Instance: example-of-us-quality-core-organization
InstanceOf: USQualityCoreOrganization
Title: "Organization example"
Description: "Example organization"
Usage: #example
* id = "example"
* identifier
  * use = #temp
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "8635143786"
* active = true
* type = $organization-type#team "Organizational team"
* name = "Example Organization"
* telecom[0]
  * system = #phone
  * value = "+1-555-555-0110"
* telecom[+]
  * system = #fax
  * value = "+1-555-555-0111"
* telecom[+]
  * system = #email
  * value = "organization@example.org"
* address
  * line = "800 Example Organization Avenue"
  * city = "Example City"
  * state = "VA"
  * postalCode = "99999"
  * country = "US"
