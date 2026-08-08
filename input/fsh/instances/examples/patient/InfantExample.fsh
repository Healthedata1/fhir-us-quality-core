Instance: infant-example
InstanceOf: USQualityCorePatient
Title: "Infant patient example"
Description: "Infant patient example"
Usage: #example
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
    * text = "Medical Record Number"
  * system = "http://example.org"
  * value = "1032703"
* active = true
* name
  * family = "Infant Patient"
  * given = "Example"
* telecom
  * system = #phone
  * value = "+1-555-555-0140"
  * use = #home
* gender = #male
* birthDate = "2020-06-02"
* address
  * line = "300 Example Street"
  * city = "Example City"
  * state = "VA"
  * postalCode = "99999"
  * country = "US"
