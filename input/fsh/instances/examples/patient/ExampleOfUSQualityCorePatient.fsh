Instance: example-of-us-quality-core-patient
InstanceOf: USQualityCorePatient
Title: "Patient example"
Description: "Basic Patient example"
Usage: #example
* id = "example"
* identifier
  * use = #usual
  * type = $v2-0203#MR
  * system = "http://example.org/patient/identifiers"
  * value = "12345"
  * period.start = "2001-05-06"
  * assigner.display = "Example Healthcare Organization"
* active = true
* name[0]
  * use = #official
  * family = "Patient"
  * given = "Example"
* name[+]
  * use = #usual
  * family = "Patient"
  * given = "Example"
* name[+]
  * use = #maiden
  * family = "Previous Patient"
  * given = "Example"
  * period.end = "2002"
* telecom[0]
  * system = #phone
  * value = "+1-555-555-0120"
  * use = #work
  * rank = 1
* telecom[+]
  * system = #phone
  * value = "+1-555-555-0121"
  * use = #mobile
  * rank = 2
* telecom[+]
  * system = #phone
  * value = "+1-555-555-0122"
  * use = #old
  * period.end = "2014"
* gender = #male
* birthDate = "1974-12-25"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "1974-12-25T14:35:45-05:00"
* deceasedBoolean = false
* address
  * use = #home
  * type = #both
  * text = "100 Example Street, Example City, VA 99999"
  * line = "100 Example Street"
  * city = "Example City"
  * district = "Example District"
  * state = "VA"
  * postalCode = "99999"
  * period.start = "1974-12-25"
* contact
  * relationship = $v2-0131#N
  * name
    * family = "Emergency Contact"
    * given = "Example"
  * telecom
    * system = #phone
    * value = "+1-555-555-0123"
  * address
    * use = #home
    * type = #both
    * line = "101 Example Street"
    * city = "Example City"
    * district = "Example District"
    * state = "VA"
    * postalCode = "99999"
    * period.start = "1974-12-25"
  * gender = #female
  * period.start = "2012"
* managingOrganization
  * reference = "Organization/example"
