Instance: example-parity
InstanceOf: USQualityCoreSimpleObservation
Title: "Number of parity observation example"
Description: "Example number of parity Observation"
Usage: #example
* status = #final
* category = $observation-category#exam "exam"
* code = $loinc#11977-6 "Parity"
* subject = Reference(Patient/reproductive-health-example) "Example Reproductive Health Patient"
* effectivePeriod
  * start = "2026-08-05T08:00:00-04:00"
  * end = "2026-08-05T08:30:00-04:00"
* issued = "2026-08-05T09:00:00-04:00"
* performer
  * reference = "Organization/example-1"
  * display = "Example Hospital"
* valueInteger = 3
