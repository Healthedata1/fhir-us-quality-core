Instance: example-of-us-quality-core-coverage
InstanceOf: USQualityCoreCoverage
Title: "Coverage example"
Description: "Example of a coverage resource used to provide information about an individual's specific plan"
Usage: #example
* id = "example"
* identifier[memberid]
  * type = $v2-0203#MB "Member Number"
  * type.text = "Member ID"
  * system = "http://example.org/payer/member-ids"
  * value = "MB123456789"
* status = #active
* type.text = "Preferred Provider Organization (PPO)"
* policyHolder.reference = "Patient/example"
* subscriber.reference = "Patient/example"
* subscriberId = "SUB987654321"
* beneficiary.reference = "Patient/example"
* dependent = "0"
* relationship = $subscriber-relationship#self "Self"
* period
  * start = "2026-01-01"
  * end = "2026-12-31"
* payor.reference = "Organization/example"
* class[group]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#group "Group"
  * value = "GRP-99482"
  * name = "Example Employer Health Plan"
* class[plan]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#plan "Plan"
  * value = "PLN-GOLD-2026"
  * name = "Example PPO Option"
