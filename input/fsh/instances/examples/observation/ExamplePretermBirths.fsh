Instance: example-preterm-births
InstanceOf: USQualityCoreSimpleObservation
Title: "Number of preterm births observation example"
Description: "Example number of preterm births Observation"
Usage: #example
* status = #final
* category = $observation-category#exam "exam"
* code = $loinc#11637-6 "Births.preterm"
* subject = Reference(Patient/reproductive-health-example) "Example Reproductive Health Patient"
* effectivePeriod
  * start = "2026-08-05T08:00:00-04:00"
  * end = "2026-08-05T08:30:00-04:00"
* issued = "2026-08-05T09:00:00-04:00"
* performer
  * reference = "Practitioner/example"
  * display = "Example Practitioner"
* valueInteger = 0
