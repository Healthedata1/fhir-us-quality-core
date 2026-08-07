Instance: example-of-us-quality-core-related-person
InstanceOf: USQualityCoreRelatedPerson
Title: "RelatedPerson example"
Description: "Emergency contact example"
Usage: #example
* id = "example"
* active = true
* patient.reference = "Patient/example"
* relationship = $v2-0131#C
* name
  * use = #official
  * family = "Related Person"
  * given = "Example"
* telecom
  * system = #phone
  * value = "+1-555-555-0150"
  * use = #work
* gender = #male
* address
  * use = #home
  * line = "600 Example Street"
  * city = "Example City"
  * state = "VA"
  * postalCode = "99999"
* photo
  * contentType = #image/jpeg
  * url = "http://example.org/Binary/f012"
* period.start = "2012-03-11"
