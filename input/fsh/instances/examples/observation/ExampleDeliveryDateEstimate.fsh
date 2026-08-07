Instance: example-delivery-date-estimate
InstanceOf: USQualityCoreSimpleObservation
Title: "Delivery date estimated example"
Description: "Example of a delivery date estimate Observation"
Usage: #example
* status = #final
* category = $observation-category#exam "exam"
* code = $loinc#11778-8 "delivery date estimated"
* subject = Reference(Patient/reproductive-health-example) "Example Reproductive Health Patient"
* effectivePeriod
  * start = "2026-08-05T08:00:00-04:00"
  * end = "2026-08-05T08:30:00-04:00"
* issued = "2026-08-05T09:00:00-04:00"
* performer
  * reference = "Practitioner/example"
  * display = "Example Practitioner"
* valueDateTime = "2026-11-20"
