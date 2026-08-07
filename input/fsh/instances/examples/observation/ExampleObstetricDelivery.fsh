Instance: example-obstetric-delivery
InstanceOf: USQualityCoreSimpleObservation
Title: "Date and time of obstetric delivery example"
Description: "Example of a obstetric delivery datetime Observation"
Usage: #example
* status = #final
* category = $observation-category#exam "exam"
* code = $loinc#93857-1 "Date and time of obstetric delivery"
* subject = Reference(Patient/reproductive-health-example) "Example Reproductive Health Patient"
* effectivePeriod
  * start = "2025-04-09T06:30:00-04:00"
  * end = "2025-04-09T08:30:00-04:00"
* issued = "2025-04-09T09:00:00-04:00"
* performer
  * reference = "Organization/example-1"
  * display = "Example Hospital"
* valueDateTime = "2025-04-09T07:23:52-04:00"
