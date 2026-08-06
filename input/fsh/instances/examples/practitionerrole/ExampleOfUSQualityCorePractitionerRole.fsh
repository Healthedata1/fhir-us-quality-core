Alias: $provider-taxonomy = http://nucc.org/provider-taxonomy

Instance: example-of-us-quality-core-practitioner-role
InstanceOf: USQualityCorePractitionerRole
Title: "PractitionerRole example"
Description: "PractitionerRole example"
Usage: #example
* id = "example"
* identifier
  * use = #temp
  * system = "http://www.acme.org/practitionerroles"
  * value = "31"
* active = true
* period.start = "1995"
* practitioner
  * reference = "Practitioner/example"
  * display = "Example Practitioner"
* organization.reference = "Organization/example"
* code = $sct#106289002 "Dentist (occupation)"
* specialty = $provider-taxonomy#122300000X "Dentist"
* location.reference = "Location/example"
* telecom
  * system = #phone
  * value = "+1-555-555-0160"
