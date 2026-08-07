Instance: example-2
InstanceOf: USQualityCorePatient
Title: "Older adult patient example"
Description: "Older adult patient example"
Usage: #example
* identifier
  * use = #usual
  * type = $v2-0203#MR
  * system = "http://example.org/patient/identifiers"
  * value = "12345"
  * period.start = "1995-05-06"
  * assigner.display = "Example Healthcare Organization"
* active = true
* name
  * use = #official
  * family = "Patient"
  * given = "Older Adult Example"
* telecom
  * system = #phone
  * value = "+1-555-555-0130"
  * use = #mobile
  * rank = 1
* gender = #female
* birthDate = "1946-09-25"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "1946-09-25T14:35:45-05:00"
* deceasedBoolean = false
* address
  * use = #home
  * type = #both
  * text = "200 Example Street, Example City, VA 99999"
  * line = "200 Example Street"
  * city = "Example City"
  * state = "VA"
  * postalCode = "99999"
  * period.start = "1946-12-25"
* contact
  * relationship = $v2-0131#N
  * name
    * family = "Emergency Contact"
    * given = "Example"
  * telecom
    * system = #phone
    * value = "+1-555-555-0131"
  * address
    * use = #home
    * type = #both
    * line = "201 Example Street"
    * city = "Example City"
    * district = "Example District"
    * state = "VA"
    * postalCode = "99999"
    * period.start = "1974-12-25"
  * gender = #female
  * period.start = "2012"
* managingOrganization.reference = "Organization/example"
