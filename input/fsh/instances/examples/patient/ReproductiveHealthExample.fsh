Instance: reproductive-health-example
InstanceOf: USQualityCorePatient
Title: "Reproductive health patient example"
Description: "Patient example used by pregnancy and obstetric observations"
Usage: #example
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
    * text = "Medical Record Number"
  * system = "http://example.org/patient/identifiers"
  * value = "reproductive-health-example"
* extension[sex].valueCoding = $sct#248152002 "Female (finding)"
* extension[interpreterRequired].valueCoding = $sct#373067005 "No (qualifier value)"
* active = true
* name
  * use = #official
  * family = "Reproductive Health Patient"
  * given = "Example"
* telecom
  * system = #phone
  * value = "+1-555-555-0142"
  * use = #mobile
* gender = #female
* birthDate = "1990-04-15"
* deceasedBoolean = false
* address
  * use = #home
  * line = "400 Example Street"
  * city = "Example City"
  * state = "VA"
  * postalCode = "99999"
  * country = "US"
  * period.start = "2026-01-01"
* communication
  * language = urn:ietf:bcp:47#en "English"
  * preferred = true
